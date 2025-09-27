import 'dart:async';

import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:bookbase/features/book/domain/usecases/search_books.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_event.dart';
part 'book_state.dart';
part 'book_bloc.freezed.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  // Import the usecase
  final SearchBooks searchBooks;

  BookBloc({required this.searchBooks}) : super(const Initial()) {
    // Emit the Loading State
    on<BookEvent>((event, emit) => emit(const BookState.loading(true)));

    // Listen for Blogs
    on<_GetAllBlogs>(_onGetAllBlogs);
    on<_LoadMoreBooks>(_onLoadMoreBooks);
  }

  Future<void> _onGetAllBlogs(
    _GetAllBlogs event,
    Emitter<BookState> emit,
  ) async {
    final response = await searchBooks(
      SearchBookParams(
        q: event.q,
        limit: event.limit,
        pageNo: event.pageNo,
      ),
    );

    response.fold(
      (failure) => emit(BookState.failure(failure.message)),
      (books) => emit(BookState.success(books, isLoadingMore: false)),
    );
  }

  Future<void> _onLoadMoreBooks(
    _LoadMoreBooks event,
    Emitter<BookState> emit,
  ) async {
    final currentState = state;

    if (currentState is Success) {
      emit(Success(currentState.books, isLoadingMore: true));

      final response = await searchBooks(
        SearchBookParams(
          q: event.q,
          limit: event.limit,
          pageNo: event.pageNo,
        ),
      );

      response.fold(
        (failure) => emit(Failure(failure.message)),
        (newBooks) {
          final allBooks = [...currentState.books, ...newBooks];
          emit(Success(allBooks, isLoadingMore: false));
        },
      );
    }
  }
}
