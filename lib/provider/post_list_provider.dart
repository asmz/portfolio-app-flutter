import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_app_flutter/api/api_client.dart';
import 'package:portfolio_app_flutter/models/post/post.dart';
import 'package:portfolio_app_flutter/models/post/post_response.dart';
import 'package:portfolio_app_flutter/provider/post_list_state.dart';
import 'package:portfolio_app_flutter/types/post_tag.dart';

const limit = 20;

class PostListNotifier extends StateNotifier<AsyncValue<PostListState>> {
  PostListNotifier({required this.tag})
    : super(const AsyncData(PostListState())) {
    getPosts();
  }

  final PostTag tag;

  Future<void> getPosts() async {
    final previous = state;
    if (!previous.requireValue.hasNext || previous.isLoading) return;

    state = const AsyncLoading<PostListState>().copyWithPrevious(previous);

    Map<String, String> queryParams = {
      "offset": '${previous.requireValue.offset}',
      "limit": '$limit',
      "tag": tag.name,
      "npf": "true",
    };

    final next = await AsyncValue.guard(() async {
      var result = await ApiClient.get<PostResponse>(
        queryParams: queryParams,
        fromJson: (json) => PostResponse.fromJson(json),
      );

      List<Post> newPosts = previous.requireValue.posts + result.response.posts;
      int newOffset = previous.requireValue.offset + limit;
      return PostListState(
        posts: newPosts,
        offset: newOffset,
        hasNext: result.response.totalPosts > newPosts.length,
        isRefreshing: false,
      );
    });

    state = next.copyWithPrevious(previous);
  }

  Future<void> refresh() async {
    state = AsyncData(
      PostListState(posts: [], offset: 0, hasNext: true, isRefreshing: true),
    );
    await getPosts();
  }
}

final postListProvider = StateNotifierProvider.family<
  PostListNotifier,
  AsyncValue<PostListState>,
  PostTag
>((ref, tag) => PostListNotifier(tag: tag));
