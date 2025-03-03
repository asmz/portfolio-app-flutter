import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_app_flutter/models/post/post.dart';

part 'post_response_body.freezed.dart';
part 'post_response_body.g.dart';

@freezed
abstract class PostResponseBody with _$PostResponseBody {
  const factory PostResponseBody({
    required List<Post> posts,
    @JsonKey(name: "total_posts") required int totalPosts,
  }) = _PostResponseBody;

  factory PostResponseBody.fromJson(Map<String, dynamic> json) =>
      _$PostResponseBodyFromJson(json);
}
