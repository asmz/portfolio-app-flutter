import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/ui/profile/widgets/account_list.dart';
import 'package:portfolio_app_flutter/ui/profile/widgets/nameplate.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/beer.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(spacing: 32, children: [Nameplate(), AccountList()]),
      ),
    );
  }
}
