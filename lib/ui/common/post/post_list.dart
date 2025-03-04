import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_app_flutter/constants/color.dart';
import 'package:portfolio_app_flutter/models/post/post_request.dart';
import 'package:portfolio_app_flutter/provider/tumblr_api_provider.dart';
import 'package:portfolio_app_flutter/types/post_tag.dart';
import 'package:portfolio_app_flutter/ui/common/error/error_dialog.dart';

class PostList extends ConsumerWidget {
  const PostList({super.key, required this.tag});

  final PostTag tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(
      tumblrApiProvider(PostRequest(offset: 0, limit: 10, tag: tag.name)),
    );

    if (response.hasError) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ErrorDialog.show(context, message: response.error.toString());
      });
    }

    return Container(
      child: response.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.posts.length,
            itemBuilder: (context, index) {
              final post = data.posts[index];
              return ListTile(
                title: Text(post.content[0].title ?? "empty"),
                subtitle: Text(post.content[0].description ?? "empty"),
              );
            },
          );
        },
        loading:
            () => Center(
              child: CircularProgressIndicator(color: AppColor.accent),
            ),
        error: (error, stackTrace) => null,
      ),
    );
  }
}
