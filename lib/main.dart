import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/ui/main_tab_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainTabView());
  }
}
