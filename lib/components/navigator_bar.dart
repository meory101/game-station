import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestation/theme/colors.dart';
import 'package:gamestation/theme/fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
    int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          backgroundColor: bac_color,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          unselectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 210, 210, 210),
            shadows: [
              BoxShadow(
                color: maincolor,
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ],
          ),
          unselectedLabelStyle: sub_W_font,
          selectedItemColor: maincolor,
          selectedIconTheme: IconThemeData(
            color: maincolor,
            shadows: [
              BoxShadow(
                color: maincolor,
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ],
          ),
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              backgroundColor: bac_color,
              icon: const Icon(
                CupertinoIcons.map_pin_ellipse,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
                backgroundColor: bac_color,
                icon: const Icon(
                  CupertinoIcons.heart,
                ),
                label: 'Favorites'),
            const BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
              backgroundColor: bac_color,
              icon: const Icon(CupertinoIcons.person),
              label: 'Profile',
            ),
          ]);
  }
}