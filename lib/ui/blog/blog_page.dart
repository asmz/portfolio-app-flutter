import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/types/post_tag.dart';
import 'package:portfolio_app_flutter/ui/common/post/post_list.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/beer.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: PostList(tag: PostTag.blog),
      ),
    );
  }
}
