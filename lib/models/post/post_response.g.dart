// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostResponse _$PostResponseFromJson(Map<String, dynamic> json) =>
    _PostResponse(
      response: PostResponseBody.fromJson(
        json['response'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PostResponseToJson(_PostResponse instance) =>
    <String, dynamic>{'response': instance.response};
