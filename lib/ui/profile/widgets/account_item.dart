import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_app_flutter/constants/color.dart';
import 'package:portfolio_app_flutter/models/account.dart';

class AccountItem extends StatelessWidget {
  const AccountItem({super.key, required this.account});

  final Account account;

  void onPressed() async {
    var url = Uri.parse(account.url);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.blurGray,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          spacing: 16,
          children: [
            Image.asset("assets/${account.service}.png", width: 24),
            Text(
              account.name,
              style: TextStyle(fontSize: 16, color: AppColor.text),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Icon(Icons.open_in_new, color: AppColor.subText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
