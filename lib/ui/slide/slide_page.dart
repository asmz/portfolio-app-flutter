import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/types/post_tag.dart';
import 'package:portfolio_app_flutter/ui/common/post/post_list.dart';

class SlidePage extends StatelessWidget {
  const SlidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Slide'),
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
        child: PostList(tag: PostTag.slide),
      ),
    );
  }
}
