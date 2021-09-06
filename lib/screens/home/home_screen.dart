import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '/constants/constants.dart';
import 'components/custom_app_bar.dart';
import 'components/diff_styles.dart';
import 'components/list_courses.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIconIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(top: appPadding * 2),
        child: Column(
          children: [
            CustomAppBar(),
            DiffStyles(),
            ListCourses(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: primary,
        height: 60,
        color: white,
        onTap: (index) {
          setState(() {
            selectedIconIndex = index;
          });
        },
        animationDuration: Duration(milliseconds: 200),
        items: [
          _menuIcon(Icons.play_arrow_outlined, 0),
          _menuIcon(Icons.search, 1),
          _menuIcon(Icons.home_outlined, 2),
          _menuIcon(Icons.favorite_border_outlined, 3),
          _menuIcon(Icons.person_outline, 4),
        ],
      ),
    );
  }

  Icon _menuIcon(IconData icon, int index) {
    return Icon(
      icon,
      size: 30,
      color: selectedIconIndex == index ? white : black,
    );
  }
}
