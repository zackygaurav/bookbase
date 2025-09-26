// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String,
  author: (json['author'] as List<dynamic>).map((e) => e as String).toList(),
  thumbnail: (json['thumbnail'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'thumbnail': instance.thumbnail,
    };
