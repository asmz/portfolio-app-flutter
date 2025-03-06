import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/constants/color.dart';
import 'package:portfolio_app_flutter/models/post/post.dart';
import 'package:portfolio_app_flutter/utils/date_util.dart';
import 'package:url_launcher/url_launcher.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.post, this.onPressItem});

  final Post post;
  final void Function(Post)? onPressItem;

  void onPressed(Post post) async {
    if (onPressItem != null) {
      onPressItem!(post);
      return;
    }

    final urlString = post.content.first.url ?? "";
    final url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final content = post.content.first;
    final poster = content.poster?.first;
    final hostname = Uri.parse(content.url ?? '').host;

    return Padding(
      padding: EdgeInsets.all(8),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColor.blurGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        ),
        onPressed: () {
          onPressed(post);
        },
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 16,
              children: [
                Image(
                  image:
                      poster != null
                          ? NetworkImage(poster.url)
                          : const AssetImage('assets/no_image.png'),
                  width: 87,
                  height: 70,
                  fit: BoxFit.contain,
                ),
                Flexible(
                  child: Column(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        content.title ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.text,
                        ),
                      ),
                      Text(
                        hostname,
                        style: TextStyle(fontSize: 14, color: AppColor.subText),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              spacing: 4,
              children: [
                for (final tag in post.tags)
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.lightGray,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      '#$tag',
                      style: TextStyle(color: AppColor.text),
                    ),
                  ),
              ],
            ),
            Divider(),
            Text(
              convertTime(post.timestamp),
              style: TextStyle(color: AppColor.subText),
            ),
          ],
        ),
      ),
    );
  }
}
