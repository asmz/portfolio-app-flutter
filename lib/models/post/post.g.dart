// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Post _$PostFromJson(Map<String, dynamic> json) => _Post(
  idString: json['id_string'] as String,
  timestamp: (json['timestamp'] as num).toInt(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  content:
      (json['content'] as List<dynamic>)
          .map((e) => PostContent.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$PostToJson(_Post instance) => <String, dynamic>{
  'id_string': instance.idString,
  'timestamp': instance.timestamp,
  'tags': instance.tags,
  'content': instance.content,
};
