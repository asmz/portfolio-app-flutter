import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/constants/color.dart';

class Nameplate extends StatelessWidget {
  const Nameplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 36,
        children: [
          Column(
            spacing: 16,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/avatar.jpg", width: 100),
                ),
              ),
              Text(
                'asmz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.text,
                ),
              ),
              Text(
                'Akira Shimizu',
                style: TextStyle(fontSize: 16, color: AppColor.text),
              ),
            ],
          ),
          Text(
            '純東北産麦芽系エンジニア',
            style: TextStyle(fontSize: 16, color: AppColor.text),
          ),
        ],
      ),
    );
  }
}
