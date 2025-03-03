import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_app_flutter/models/post/post_request.dart';
import 'package:portfolio_app_flutter/provider/tumblr_api_provider.dart';

class BlogPage extends HookConsumerWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(
      tumblrApiProvider(PostRequest(offset: 0, limit: 10, tag: 'blog')),
    );

    return Container(
      child: response.when(
        data: (data) {
          return Column(
            children: [
              for (var post in data.posts)
                Text(post.content[0].title ?? "empty"),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
