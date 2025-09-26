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
  String get q => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String q, int limit, int pageNo) getAllBooks,
    required TResult Function(String q, int limit, int pageNo) loadMoreBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String q, int limit, int pageNo)? getAllBooks,
    TResult? Function(String q, int limit, int pageNo)? loadMoreBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String q, int limit, int pageNo)? getAllBooks,
    TResult Function(String q, int limit, int pageNo)? loadMoreBooks,
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

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookEventCopyWith<BookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res, BookEvent>;
  @useResult
  $Res call({String q, int limit, int pageNo});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = null, Object? limit = null, Object? pageNo = null}) {
    return _then(
      _value.copyWith(
            q: null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                      as String,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
            pageNo: null == pageNo
                ? _value.pageNo
                : pageNo // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetAllBlogsImplCopyWith<$Res>
    implements $BookEventCopyWith<$Res> {
  factory _$$GetAllBlogsImplCopyWith(
    _$GetAllBlogsImpl value,
    $Res Function(_$GetAllBlogsImpl) then,
  ) = __$$GetAllBlogsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String q, int limit, int pageNo});
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
  $Res call({Object? q = null, Object? limit = null, Object? pageNo = null}) {
    return _then(
      _$GetAllBlogsImpl(
        null == q
            ? _value.q
            : q // ignore: cast_nullable_to_non_nullable
                  as String,
        null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        null == pageNo
            ? _value.pageNo
            : pageNo // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetAllBlogsImpl implements _GetAllBlogs {
  const _$GetAllBlogsImpl(this.q, this.limit, this.pageNo);

  @override
  final String q;
  @override
  final int limit;
  @override
  final int pageNo;

  @override
  String toString() {
    return 'BookEvent.getAllBooks(q: $q, limit: $limit, pageNo: $pageNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBlogsImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, q, limit, pageNo);

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
    required TResult Function(String q, int limit, int pageNo) getAllBooks,
    required TResult Function(String q, int limit, int pageNo) loadMoreBooks,
  }) {
    return getAllBooks(q, limit, pageNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String q, int limit, int pageNo)? getAllBooks,
    TResult? Function(String q, int limit, int pageNo)? loadMoreBooks,
  }) {
    return getAllBooks?.call(q, limit, pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String q, int limit, int pageNo)? getAllBooks,
    TResult Function(String q, int limit, int pageNo)? loadMoreBooks,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks(q, limit, pageNo);
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
  const factory _GetAllBlogs(
    final String q,
    final int limit,
    final int pageNo,
  ) = _$GetAllBlogsImpl;

  @override
  String get q;
  @override
  int get limit;
  @override
  int get pageNo;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllBlogsImplCopyWith<_$GetAllBlogsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreBooksImplCopyWith<$Res>
    implements $BookEventCopyWith<$Res> {
  factory _$$LoadMoreBooksImplCopyWith(
    _$LoadMoreBooksImpl value,
    $Res Function(_$LoadMoreBooksImpl) then,
  ) = __$$LoadMoreBooksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String q, int limit, int pageNo});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = null, Object? limit = null, Object? pageNo = null}) {
    return _then(
      _$LoadMoreBooksImpl(
        null == q
            ? _value.q
            : q // ignore: cast_nullable_to_non_nullable
                  as String,
        null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        null == pageNo
            ? _value.pageNo
            : pageNo // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadMoreBooksImpl implements _LoadMoreBooks {
  const _$LoadMoreBooksImpl(this.q, this.limit, this.pageNo);

  @override
  final String q;
  @override
  final int limit;
  @override
  final int pageNo;

  @override
  String toString() {
    return 'BookEvent.loadMoreBooks(q: $q, limit: $limit, pageNo: $pageNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreBooksImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, q, limit, pageNo);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreBooksImplCopyWith<_$LoadMoreBooksImpl> get copyWith =>
      __$$LoadMoreBooksImplCopyWithImpl<_$LoadMoreBooksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String q, int limit, int pageNo) getAllBooks,
    required TResult Function(String q, int limit, int pageNo) loadMoreBooks,
  }) {
    return loadMoreBooks(q, limit, pageNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String q, int limit, int pageNo)? getAllBooks,
    TResult? Function(String q, int limit, int pageNo)? loadMoreBooks,
  }) {
    return loadMoreBooks?.call(q, limit, pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String q, int limit, int pageNo)? getAllBooks,
    TResult Function(String q, int limit, int pageNo)? loadMoreBooks,
    required TResult orElse(),
  }) {
    if (loadMoreBooks != null) {
      return loadMoreBooks(q, limit, pageNo);
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
  const factory _LoadMoreBooks(
    final String q,
    final int limit,
    final int pageNo,
  ) = _$LoadMoreBooksImpl;

  @override
  String get q;
  @override
  int get limit;
  @override
  int get pageNo;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreBooksImplCopyWith<_$LoadMoreBooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) failure,
    required TResult Function(List<Book> books, bool isLoadingMore) success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<Book> books, bool isLoadingMore)? success,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<Book> books, bool isLoadingMore)? success,
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
    required TResult Function(List<Book> books, bool isLoadingMore) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<Book> books, bool isLoadingMore)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<Book> books, bool isLoadingMore)? success,
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
    required TResult Function(List<Book> books, bool isLoadingMore) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<Book> books, bool isLoadingMore)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<Book> books, bool isLoadingMore)? success,
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
    required TResult Function(List<Book> books, bool isLoadingMore) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<Book> books, bool isLoadingMore)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<Book> books, bool isLoadingMore)? success,
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
  $Res call({List<Book> books, bool isLoadingMore});
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
  $Res call({Object? books = null, Object? isLoadingMore = null}) {
    return _then(
      _$SuccessImpl(
        null == books
            ? _value._books
            : books // ignore: cast_nullable_to_non_nullable
                  as List<Book>,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(final List<Book> books, {this.isLoadingMore = false})
    : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'BookState.success(books: $books, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_books),
    isLoadingMore,
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
    required TResult Function(List<Book> books, bool isLoadingMore) success,
  }) {
    return success(books, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(List<Book> books, bool isLoadingMore)? success,
  }) {
    return success?.call(books, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? failure,
    TResult Function(List<Book> books, bool isLoadingMore)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(books, isLoadingMore);
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
  const factory Success(final List<Book> books, {final bool isLoadingMore}) =
      _$SuccessImpl;

  List<Book> get books;
  bool get isLoadingMore;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
