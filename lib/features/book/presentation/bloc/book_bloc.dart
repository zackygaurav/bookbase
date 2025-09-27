import 'dart:async';

import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/domain/usecases/search_books.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_event.dart';
part 'book_state.dart';
part 'book_bloc.freezed.dart';

/// Bloc responsible for fetching books and handling pagination.
///
/// Usage:
///  - dispatch `BookEvent.fetchBooks(query: "...")` to load page 1 (initial or refresh)
///  - dispatch `BookEvent.loadMore()` when user scrolls near bottom
class BookBloc extends Bloc<BookEvent, BookState> {
  // Import the Usecase
  final SearchBooks searchBooks;

  // Internal guards and last known parameters
  int _currentPage = 1;
  int _currentLimit = 10;
  String _currentQuery = '';
  // boolean 'isFetching' to prevent concurrent load-more requests
  bool _isFetching = false;

  BookBloc({required this.searchBooks}) : super(const Initial()) {
    // Listen for Blogs
    on<_GetAllBlogs>(_onGetAllBlogs);
    on<_LoadMoreBooks>(_onLoadMoreBooks);
  }

  /// Handles initial fetch or refresh (page reset to 1).
  Future<void> _onGetAllBlogs(
    _GetAllBlogs event,
    Emitter<BookState> emit,
  ) async {
    _currentQuery = event.query.trim();
    _currentLimit = event.limit;
    _currentPage = 1;

    // Emit the Loading State
    emit(const Loading());

    final response = await searchBooks(
      SearchBookParams(
        q: _currentQuery,
        limit: _currentLimit,
        pageNo: _currentPage,
      ),
    );

    response.fold(
      (failure) => emit(BookState.failure(failure.message)),
      (books) {
        final hasReachedMax = books.isEmpty || books.length < _currentLimit;
        emit(
          BookState.success(
            books: books,
            page: _currentPage,
            limit: _currentLimit,
            isLoadingMore: false,
            hasReachedMax: hasReachedMax,
          ),
        );
      },
    );
  }

  /// Handles loading next page and appending results.
  ///
  /// Important behavior:
  ///  - If there is no current Success state, or if already loading more,
  ///    or if we've reached max, the call is ignored.
  ///  - On failure, the UI retains the previous list and the loadingMore flag resets.
  Future<void> _onLoadMoreBooks(
    _LoadMoreBooks event,
    Emitter<BookState> emit,
  ) async {
    final currentState = state;

    // Return if currentState is anything other than Success
    if (currentState is! Success) {
      return;
    }

    // Condition check to avoid duplicate requests
    if (currentState.isLoadingMore ||
        currentState.hasReachedMax ||
        _isFetching) {
      return;
    }

    _isFetching = true;

    // optimistic UI: show bottom loader but keep current items
    emit(currentState.copyWith(isLoadingMore: true));

    final nextPage = currentState.page + 1;
    final result = await searchBooks(
      SearchBookParams(
        q: _currentQuery,
        limit: currentState.limit,
        pageNo: nextPage,
      ),
    );

    _isFetching = false;

    result.fold(
      (failure) {
        // keep previous items and stop loading more indicator
        emit(currentState.copyWith(isLoadingMore: false));
      },
      (newBooks) {
        final allBooks = [...currentState.books, ...newBooks];
        final hasReachedMax =
            newBooks.isEmpty || newBooks.length < currentState.limit;
        // Emit the Success state with updated parameters
        emit(
          BookState.success(
            books: allBooks,
            page: nextPage,
            limit: currentState.limit,
            isLoadingMore: false,
            hasReachedMax: hasReachedMax,
          ),
        );
      },
    );
  }
}
