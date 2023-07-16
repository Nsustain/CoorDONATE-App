import 'package:flutter/material.dart';

class coorDonateBottomNavigationBar extends StatefulWidget {
  @override
  _coorDonateBottomNavigationBar createState() =>
      _coorDonateBottomNavigationBar();
}

class _coorDonateBottomNavigationBar
    extends State<coorDonateBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.add_circle_outline,
    Icons.notifications,
    Icons.account_circle,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.black54,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(_icons[0]),
          label: 'Feed',
        ),
        BottomNavigationBarItem(
          icon: Icon(_icons[1]),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(_icons[2]),
          label: 'Post',
        ),
        BottomNavigationBarItem(
          icon: Icon(_icons[3]),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(_icons[4]),
          label: 'Account',
        ),
      ],
    );
  }
}
