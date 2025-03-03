import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_app_flutter/models/post/post_content.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    @JsonKey(name: "id_string") required String idString,
    required int timestamp,
    required List<String> tags,
    required List<PostContent> content,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
