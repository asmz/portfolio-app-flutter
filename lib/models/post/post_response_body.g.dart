// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostResponseBody _$PostResponseBodyFromJson(Map<String, dynamic> json) =>
    _PostResponseBody(
      posts:
          (json['posts'] as List<dynamic>)
              .map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList(),
      totalPosts: (json['total_posts'] as num).toInt(),
    );

Map<String, dynamic> _$PostResponseBodyToJson(_PostResponseBody instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'total_posts': instance.totalPosts,
    };
