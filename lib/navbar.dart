import 'package:flutter/material.dart';
import 'package:lomba/calendar.dart';
import 'package:lomba/catatan.dart';
import 'package:lomba/home.dart';
import 'package:lomba/profile.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
    required PageController pageControlller,
  }) : _pageControlller = pageControlller;

  final PageController _pageControlller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageControlller,
        children: const [
          Home(),
          Calendar(),
          Catatan(),
          Profile(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: Color(0xff6495ed),
        controller: _pageControlller,
        flat: true,
        useActiveColorByDefault: false,
        items: [
          RollingBottomBarItem(Icons.home,
              activeColor: Colors.white, label: 'Home'),
          RollingBottomBarItem(Icons.calendar_month,
              label: 'Calender', activeColor: Colors.white),
          RollingBottomBarItem(Icons.note,
              label: 'Catatan', activeColor: Colors.white),
          RollingBottomBarItem(Icons.person,
              label: 'Profile', activeColor: Colors.white),
        ],
        enableIconRotation: true,
        onTap: (index) {
          _pageControlller.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
