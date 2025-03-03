import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_app_flutter/models/post/post_response_body.dart';

part 'post_response.freezed.dart';
part 'post_response.g.dart';

@freezed
abstract class PostResponse with _$PostResponse {
  const factory PostResponse({required PostResponseBody response}) =
      _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}
