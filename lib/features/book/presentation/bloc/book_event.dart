part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  /// Fetch books for [query] (page reset to 1). Used for initial load and refresh.
  const factory BookEvent.getAllBooks({
    required String query,
    @Default(10) final int limit,
  }) = _GetAllBlogs;

  /// Load the next page using the last query/limit known to the Bloc.
  const factory BookEvent.loadMoreBooks() = _LoadMoreBooks;
}
