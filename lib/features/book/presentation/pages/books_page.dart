import 'package:bookbase/core/common/widgets/show_snackbar.dart';
import 'package:bookbase/features/book/presentation/bloc/book_bloc.dart';
import 'package:bookbase/features/book/presentation/widgets/book_card_list.dart';
import 'package:bookbase/features/book/presentation/widgets/book_card_shimmer_list.dart';
import 'package:bookbase/features/book/presentation/widgets/book_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  int pageNo = 1;
  String defaultSearchQuery = 'harry';

  @override
  void initState() {
    super.initState();

    context.read<BookBloc>().add(
      BookEvent.getAllBooks(defaultSearchQuery, 10, pageNo),
    );

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      pageNo++;
      context.read<BookBloc>().add(
        BookEvent.loadMoreBooks(
          _searchController.text.trim().isEmpty
              ? defaultSearchQuery
              : _searchController.text.trim(),
          10,
          pageNo,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookBase Library'),
      ),
      body: BlocListener<BookBloc, BookState>(
        listener: (context, state) {
          if (state is Failure) {
            showSnackbar(context, state.errorMessage);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              const SizedBox(height: 8.0),
              BookSearchBar(
                searchController: _searchController,
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    _fetchBookData(value);
                  }
                },
              ),
              const SizedBox(height: 16.0),
              BlocBuilder<BookBloc, BookState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const BookCardShimmerList();
                  }

                  if (state is Success) {
                    return Expanded(
                      child: RefreshIndicator(
                        onRefresh: () => _fetchBookData(
                          _searchController.text.trim(),
                        ),
                        child: BookCardList(
                          books: state.books,
                          scrollController: _scrollController,
                          isLoadingMore: state.isLoadingMore,
                        ),
                      ),
                    );
                  }

                  if (state is Failure) {
                    return const Text('Failed to Load Books');
                  }

                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController
      ..removeListener(_onScroll)
      ..dispose();

    // Dispose the Search TextEditingController
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _fetchBookData(String query) async {
    defaultSearchQuery = query;
    pageNo = 1;

    context.read<BookBloc>().add(
      BookEvent.getAllBooks(
        query.isEmpty ? defaultSearchQuery : query,
        10,
        pageNo,
      ),
    );
  }
}
