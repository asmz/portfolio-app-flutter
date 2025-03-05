import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_app_flutter/models/post/post.dart';

part 'post_list_state.freezed.dart';

@freezed
abstract class PostListState with _$PostListState {
  const factory PostListState({
    @Default([]) List<Post> posts,
    @Default(0) int offset,
    @Default(true) bool hasNext,
  }) = _PostListState;
}
