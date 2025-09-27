// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int limit) getAllBooks,
    required TResult Function() loadMoreBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int limit)? getAllBooks,
    TResult? Function()? loadMoreBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int limit)? getAllBooks,
    TResult Function()? loadMoreBooks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllBlogs value) getAllBooks,
    required TResult Function(_LoadMoreBooks value) loadMoreBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllBlogs value)? getAllBooks,
    TResult? Function(_LoadMoreBooks value)? loadMoreBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllBlogs value)? getAllBooks,
    TResult Function(_LoadMoreBooks value)? loadMoreBooks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res, BookEvent>;
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res, $Val extends BookEvent>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllBlogsImplCopyWith<$Res> {
  factory _$$GetAllBlogsImplCopyWith(
    _$GetAllBlogsImpl value,
    $Res Function(_$GetAllBlogsImpl) then,
  ) = __$$GetAllBlogsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, int limit});
}

/// @nodoc
class __$$GetAllBlogsImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$GetAllBlogsImpl>
    implements _$$GetAllBlogsImplCopyWith<$Res> {
  __$$GetAllBlogsImplCopyWithImpl(
    _$GetAllBlogsImpl _value,
    $Res Function(_$GetAllBlogsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null, Object? limit = null}) {
    return _then(
      _$GetAllBlogsImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetAllBlogsImpl implements _GetAllBlogs {
  const _$GetAllBlogsImpl({required this.query, this.limit = 10});

  @override
  final String query;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'BookEvent.getAllBooks(query: $query, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBlogsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, limit);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllBlogsImplCopyWith<_$GetAllBlogsImpl> get copyWith =>
      __$$GetAllBlogsImplCopyWithImpl<_$GetAllBlogsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int limit) getAllBooks,
    required TResult Function() loadMoreBooks,
  }) {
    return getAllBooks(query, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int limit)? getAllBooks,
    TResult? Function()? loadMoreBooks,
  }) {
    return getAllBooks?.call(query, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int limit)? getAllBooks,
    TResult Function()? loadMoreBooks,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks(query, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllBlogs value) getAllBooks,
    required TResult Function(_LoadMoreBooks value) loadMoreBooks,
  }) {
    return getAllBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllBlogs value)? getAllBooks,
    TResult? Function(_LoadMoreBooks value)? loadMoreBooks,
  }) {
    return getAllBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllBlogs value)? getAllBooks,
    TResult Function(_LoadMoreBooks value)? loadMoreBooks,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks(this);
    }
    return orElse();
  }
}

abstract class _GetAllBlogs implements BookEvent {
  const factory _GetAllBlogs({required final String query, final int limit}) =
      _$GetAllBlogsImpl;

  String get query;
  int get limit;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllBlogsImplCopyWith<_$GetAllBlogsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreBooksImplCopyWith<$Res> {
  factory _$$LoadMoreBooksImplCopyWith(
    _$LoadMoreBooksImpl value,
    $Res Function(_$LoadMoreBooksImpl) then,
  ) = __$$LoadMoreBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreBooksImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$LoadMoreBooksImpl>
    implements _$$LoadMoreBooksImplCopyWith<$Res> {
  __$$LoadMoreBooksImplCopyWithImpl(
    _$LoadMoreBooksImpl _value,
    $Res Function(_$LoadMoreBooksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreBooksImpl implements _LoadMoreBooks {
  const _$LoadMoreBooksImpl();

  @override
  String toString() {
    return 'BookEvent.loadMoreBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int limit) getAllBooks,
    required TResult Function() loadMoreBooks,
  }) {
    return loadMoreBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, int limit)? getAllBooks,
    TResult? Function()? loadMoreBooks,
  }) {
    return loadMoreBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int limit)? getAllBooks,
    TResult Function()? loadMoreBooks,
    required TResult orElse(),
  }) {
    if (loadMoreBooks != null) {
      return loadMoreBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllBlogs value) getAllBooks,
    required TResult Function(_LoadMoreBooks value) loadMoreBooks,
  }) {
    return loadMoreBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllBlogs value)? getAllBooks,
    TResult? Function(_LoadMoreBooks value)? loadMoreBooks,
  }) {
    return loadMoreBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllBlogs value)? getAllBooks,
    TResult Function(_LoadMoreBooks value)? loadMoreBooks,
    required TResult orElse(),
  }) {
    if (loadMoreBooks != null) {
      return loadMoreBooks(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreBooks implements BookEvent {
  const factory _LoadMoreBooks() = _$LoadMoreBooksImpl;
}

/// @nodoc
mixin _$BookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )
    success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )
    success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BookState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BookState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )
    success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BookState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null}) {
    return _then(
      _$FailureImpl(
        null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )
    success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements BookState {
  const factory Failure(final String errorMessage) = _$FailureImpl;

  String get errorMessage;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Book> books,
    int page,
    int limit,
    bool isLoadingMore,
    bool hasReachedMax,
  });
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? page = null,
    Object? limit = null,
    Object? isLoadingMore = null,
    Object? hasReachedMax = null,
  }) {
    return _then(
      _$SuccessImpl(
        books: null == books
            ? _value._books
            : books // ignore: cast_nullable_to_non_nullable
                  as List<Book>,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({
    required final List<Book> books,
    required this.page,
    required this.limit,
    this.isLoadingMore = false,
    this.hasReachedMax = false,
  }) : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final int page;
  @override
  final int limit;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'BookState.success(books: $books, page: $page, limit: $limit, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_books),
    page,
    limit,
    isLoadingMore,
    hasReachedMax,
  );

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )
    success,
  }) {
    return success(books, page, limit, isLoadingMore, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
  }) {
    return success?.call(books, page, limit, isLoadingMore, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(
      List<Book> books,
      int page,
      int limit,
      bool isLoadingMore,
      bool hasReachedMax,
    )?
    success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(books, page, limit, isLoadingMore, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements BookState {
  const factory Success({
    required final List<Book> books,
    required final int page,
    required final int limit,
    final bool isLoadingMore,
    final bool hasReachedMax,
  }) = _$SuccessImpl;

  List<Book> get books;
  int get page;
  int get limit;
  bool get isLoadingMore;
  bool get hasReachedMax;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
