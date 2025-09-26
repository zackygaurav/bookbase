import 'package:bookbase/features/book/domain/entities/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    @JsonKey(name: 'cover_i') required int? id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'author_name') required List<String> author,
    @JsonKey(name: 'author_key') required List<String> thumbnail,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

extension BookModelX on BookModel {
  Book toEntity() => Book(
    id: id,
    title: title,
    author: author,
    thumbnail: thumbnail.isNotEmpty ? thumbnail : [],
  );
}
