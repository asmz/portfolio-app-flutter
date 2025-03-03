import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_content_poster.freezed.dart';
part 'post_content_poster.g.dart';

@freezed
abstract class PostContentPoster with _$PostContentPoster {
  const factory PostContentPoster({required String url}) = _PostContentPoster;

  factory PostContentPoster.fromJson(Map<String, dynamic> json) =>
      _$PostContentPosterFromJson(json);
}
