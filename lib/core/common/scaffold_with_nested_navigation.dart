import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const ScaffoldWithNestedNavigation(
      {super.key, required this.navigationShell});

  void _goBranch(int index) {
    navigationShell.goBranch(index,
        initialLocation: navigationShell.currentIndex == index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: GNav(
        selectedIndex: navigationShell.currentIndex,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        gap: 3.w,
        backgroundColor: Colors.white,
        iconSize: 35.h,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.add_circle_outline,
            text: 'Post',
          ),
          GButton(
            icon: Icons.notifications,
            text: 'Notifications',
          ),
          GButton(
            icon: Icons.account_circle,
            text: 'Profile',
          ),
        ],
        onTabChange: _goBranch,
      ),
    );
  }
}
