import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/feed/presentation/screen/create_post_page.dart';
import 'package:coordonate_app/features/feed/presentation/screen/search_page.dart';
import 'package:coordonate_app/utils/helper/pref_manager.dart';
import 'package:flutter/material.dart';

// Import your page classes here
import 'package:coordonate_app/features/feed/presentation/screen/feeds_page.dart';


class CoorDonateBottomNavigationBar extends StatefulWidget {
  static final prefManager = sl<PrefManager>();
  @override
  _CoorDonateBottomNavigationBarState createState() =>
      _CoorDonateBottomNavigationBarState();
}

class _CoorDonateBottomNavigationBarState
    extends State<CoorDonateBottomNavigationBar> {
  int _selectedIndex = 0;

  static List<Widget> _pages = [
    FeedsPage(),
    SearchPage(),
    CreatePostPage(prefManager: CoorDonateBottomNavigationBar.prefManager),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
