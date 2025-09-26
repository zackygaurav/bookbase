part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.getAllBooks(
    final String q,
    final int limit,
    final int pageNo,
  ) = _GetAllBlogs;

  const factory BookEvent.loadMoreBooks(
    final String q,
    final int limit,
    final int pageNo,
  ) = _LoadMoreBooks;
}
