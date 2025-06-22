import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_app_flutter/constants/color.dart';
import 'package:portfolio_app_flutter/models/post/post.dart';
import 'package:portfolio_app_flutter/provider/post_list_provider.dart';
import 'package:portfolio_app_flutter/types/post_tag.dart';
import 'package:portfolio_app_flutter/ui/common/error/error_dialog.dart';
import 'package:portfolio_app_flutter/ui/common/post/post_item.dart';

class PostList extends ConsumerWidget {
  PostList({super.key, required this.tag, this.onPressItem});

  final PostTag tag;
  final void Function(Post)? onPressItem;
  final scrollController = ScrollController();

  void controlListener(PostListNotifier postListNotifier) {
    final isEndReached =
        scrollController.position.pixels ==
        scrollController.position.maxScrollExtent;
    if (isEndReached) {
      postListNotifier.getPosts();
    }
  }

  Future<void> onRefresh(PostListNotifier postListNotifier) async {
    await postListNotifier.refresh();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postListState = ref.watch(postListProvider(tag));
    final postListNotifier = ref.watch(postListProvider(tag).notifier);

    scrollController.addListener(() => controlListener(postListNotifier));

    if (postListState.hasError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ErrorDialog.show(context, message: postListState.error.toString());
      });
      return SizedBox();
    }

    if (!postListState.hasValue) {
      return SizedBox();
    }

    final posts = postListState.requireValue.posts;
    final isShowBottomIndicator =
        postListState.isLoading && !postListState.requireValue.isRefreshing;
    final orientation = MediaQuery.of(context).orientation;

    return RefreshIndicator(
      color: AppColor.accent,
      onRefresh: () async => await onRefresh(postListNotifier),
      child: Scrollbar(
        controller: scrollController,
        child: ListView.builder(
          controller: scrollController,
          padding: EdgeInsets.symmetric(
            horizontal: orientation == Orientation.landscape ? 250 : 16,
          ),
          itemCount: posts.length + 1,
          itemBuilder: (context, index) {
            if (index < posts.length) {
              return Semantics(
                identifier: 'post-${tag.name}-$index',
                child: PostItem(post: posts[index], onPressItem: onPressItem),
              );
            }

            return Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 48,
                child:
                    isShowBottomIndicator
                        ? Center(
                          child: CircularProgressIndicator(
                            color: AppColor.accent,
                          ),
                        )
                        : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
