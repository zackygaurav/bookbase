import 'package:bookbase/core/common/widgets/show_snackbar.dart';
import 'package:bookbase/features/book/presentation/bloc/book_bloc.dart';
import 'package:bookbase/features/book/presentation/widgets/book_card_list.dart';
import 'package:bookbase/features/book/presentation/widgets/book_card_shimmer_list.dart';
import 'package:bookbase/features/book/presentation/widgets/book_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays the main list of books and provides search functionality.
///
/// This page is the entry point for browsing and searching books.
/// Features include:
/// - Search bar with query input.
/// - Pull-to-refresh functionality.
/// - Infinite scroll pagination.
/// - Error handling via [SnackBar].
class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();

  String _defaultSearchQuery = 'harry';

  @override
  void initState() {
    super.initState();

    // Fetch initial books on page load.
    context.read<BookBloc>().add(
      BookEvent.getAllBooks(query: _defaultSearchQuery, limit: 10),
    );

    _scrollController.addListener(_onScroll);
  }

  /// Scroll listener for triggering pagination.
  ///
  /// When the user scrolls near the bottom of the list,
  /// dispatches a [BookEvent.loadMoreBooks] event.
  void _onScroll() {
    final bloc = context.read<BookBloc>();
    final state = bloc.state;
    if (state is Success) {
      final threshold = 200;
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - threshold &&
          !state.isLoadingMore &&
          !state.hasReachedMax) {
        bloc.add(const BookEvent.loadMoreBooks());
      }
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
                  // Loading State
                  if (state is Loading) {
                    return const BookCardShimmerList();
                  }

                  // Failure State
                  if (state is Failure) {
                    return const Center(
                      child: Text('Failed to Load Books'),
                    );
                  }

                  // Success State
                  if (state is Success) {
                    return Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          // dispatch fetchBooks to reset to page 1
                          context.read<BookBloc>().add(
                            BookEvent.getAllBooks(
                              query: _searchController.text.trim().isEmpty
                                  ? _defaultSearchQuery
                                  : _searchController.text.trim(),
                              limit: 10,
                            ),
                          );
                        },
                        child: BookCardList(
                          books: state.books,
                          scrollController: _scrollController,
                          isLoadingMore: state.isLoadingMore,
                        ),
                      ),
                    );
                  }

                  return const SizedBox.shrink();
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
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();

    // Dispose the Search TextEditingController
    _searchController.dispose();
    super.dispose();
  }

  /// Fetches book data for a given [query].
  ///
  /// Resets pagination and dispatches [BookEvent.getAllBooks].
  Future<void> _fetchBookData(String query) async {
    _defaultSearchQuery = query.isEmpty ? _defaultSearchQuery : query;

    context.read<BookBloc>().add(
      BookEvent.getAllBooks(
        query: query.isEmpty ? _defaultSearchQuery : query,
        limit: 10,
      ),
    );
  }
}
