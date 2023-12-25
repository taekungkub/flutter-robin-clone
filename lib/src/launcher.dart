import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/screens/activities/activities_view.dart';
import 'package:flutter_application_2/src/screens/favorite/favorite_view.dart';
import 'package:flutter_application_2/src/screens/home/home_view.dart';
import 'package:flutter_application_2/src/theme.dart';

class Launcher extends StatefulWidget {
  const Launcher({super.key});

  @override
  State<Launcher> createState() => _launcherState();

  static const routeName = '/';
}

int _selectedIndex = 0;

class _launcherState extends State<Launcher> {
  final List<Widget> _pageWidget = <Widget>[
    HomeView(),
    FavoriteView(),
    ActivitiesView()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    final Color activeColor = kPrimaryColor;

    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      // bottomNavigationBar: CustomBottomNavBar(
      //   selectedMenu: _selectedIndex,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedIconTheme: IconThemeData(color: kPrimaryColor),
        selectedItemColor: kPrimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,
                color: _selectedIndex == 0 ? activeColor : inActiveIconColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_outlined,
                color: _selectedIndex == 1 ? activeColor : inActiveIconColor),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined,
                color: _selectedIndex == 2 ? activeColor : inActiveIconColor),
            label: 'Activities',
          ),
        ],
      ),
    );
  }
}
