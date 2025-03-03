// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostContent _$PostContentFromJson(Map<String, dynamic> json) => _PostContent(
  type: json['type'] as String,
  description: json['description'] as String?,
  title: json['title'] as String?,
  url: json['url'] as String?,
  poster:
      (json['poster'] as List<dynamic>?)
          ?.map((e) => PostContentPoster.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$PostContentToJson(_PostContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'title': instance.title,
      'url': instance.url,
      'poster': instance.poster,
    };
