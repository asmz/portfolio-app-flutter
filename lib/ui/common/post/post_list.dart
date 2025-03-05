import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_app_flutter/constants/color.dart';
import 'package:portfolio_app_flutter/provider/post_list_provider.dart';
import 'package:portfolio_app_flutter/types/post_tag.dart';
import 'package:portfolio_app_flutter/ui/common/error/error_dialog.dart';
import 'package:portfolio_app_flutter/ui/common/post/post_item.dart';

class PostList extends ConsumerWidget {
  PostList({super.key, required this.tag});

  final PostTag tag;
  final scrollController = ScrollController();

  void controlListener(PostListNotifier postListNotifier) {
    final isEndReached =
        scrollController.position.pixels ==
        scrollController.position.maxScrollExtent;
    if (isEndReached) {
      postListNotifier.getPosts();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postListState = ref.watch(postListProvider(tag));
    final postListNotifier = ref.watch(postListProvider(tag).notifier);

    scrollController.addListener(() => controlListener(postListNotifier));

    if (postListState.hasValue && postListState.requireValue.posts.isNotEmpty) {
      final posts = postListState.requireValue.posts;
      return ListView.builder(
        controller: scrollController,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: posts.length + 1,
        itemBuilder: (context, index) {
          if (index < posts.length) {
            return PostItem(post: posts[index]);
          }

          if (postListState.isLoading) {
            return SizedBox(
              height: 48,
              child: Center(
                child: CircularProgressIndicator(color: AppColor.accent),
              ),
            );
          }

          return SizedBox(height: 48);
        },
      );
    } else if (postListState.hasError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ErrorDialog.show(context, message: postListState.error.toString());
      });
      return SizedBox();
    } else if (postListState.isLoading) {
      return Center(child: CircularProgressIndicator(color: AppColor.accent));
    } else {
      return SizedBox();
    }
  }
}
