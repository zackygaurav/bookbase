part of 'book_bloc.dart';

@freezed
class BookState with _$BookState {
  const factory BookState.initial() = Initial;
  const factory BookState.loading() = Loading;
  const factory BookState.failure(String errorMessage) = Failure;
  const factory BookState.success(
    List<Book> books, {
    @Default(false) bool isLoadingMore,
  }) = Success;
}
