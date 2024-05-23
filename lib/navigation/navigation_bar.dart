import 'package:flutter/material.dart';
import 'package:instagram_home_page/navigation/route.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyRoute.widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Search.png",
              height: 3.h,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/More.png",
              height: 3.h,
            ),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Video.png",
              height: 3.h,
            ),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: ClipOval(
                child: Image.asset(
              "assets/images/luffy1.jpg",
              height: 3.h,
            )),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
