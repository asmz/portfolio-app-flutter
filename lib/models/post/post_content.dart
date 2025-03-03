import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_app_flutter/models/post/post_content_poster.dart';

part 'post_content.freezed.dart';
part 'post_content.g.dart';

@freezed
abstract class PostContent with _$PostContent {
  const factory PostContent({
    required String type,
    String? description,
    String? title,
    String? url,
    List<PostContentPoster>? poster,
  }) = _PostContent;

  factory PostContent.fromJson(Map<String, dynamic> json) =>
      _$PostContentFromJson(json);
}
