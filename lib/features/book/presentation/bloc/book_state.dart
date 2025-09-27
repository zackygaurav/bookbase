part of 'book_bloc.dart';

/// States emitted by [BookBloc].
@freezed
class BookState with _$BookState {
  const factory BookState.initial() = Initial;

  /// Loading state used for the very first fetch / hard refresh.
  const factory BookState.loading() = Loading;

  /// Failure state with an error message.
  const factory BookState.failure(String errorMessage) = Failure;

  /// Success state. Contains the list, current page, limit and control flags.
  const factory BookState.success({
    required List<Book> books,
    required int page,
    required int limit,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
  }) = Success;
}
