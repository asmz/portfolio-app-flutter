import 'package:flutter/material.dart';
import 'package:portfolio_app_flutter/constants/color.dart';
import 'package:portfolio_app_flutter/ui/blog/blog_page.dart';
import 'package:portfolio_app_flutter/ui/profile/profile_page.dart';
import 'package:portfolio_app_flutter/ui/slide/slide_page.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  MainTabViewState createState() => MainTabViewState();
}

class MainTabViewState extends State<MainTabView> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[ProfilePage(), BlogPage(), SlidePage()];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: _pages.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: 'Blog'),
            BottomNavigationBarItem(
              icon: Icon(Icons.co_present),
              label: 'Slide',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColor.accent,
          backgroundColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
