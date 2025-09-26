// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: (json['cover_i'] as num?)?.toInt(),
      title: json['title'] as String,
      author: (json['author_name'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      thumbnail: (json['author_key'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'cover_i': instance.id,
      'title': instance.title,
      'author_name': instance.author,
      'author_key': instance.thumbnail,
    };
