import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../screens/DevicesScreen.dart';
import '../screens/homescreen.dart';
import '../screens/notificationsScreen.dart';
import '../screens/profileScreen.dart';

class BottomNavigationClass extends StatefulWidget {
  const BottomNavigationClass({super.key});

  @override
  State<BottomNavigationClass> createState() => _BottomNavigationClassState();
}

class _BottomNavigationClassState extends State<BottomNavigationClass> {


 int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    DevicesScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20.sp,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:  [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.sunny, color: Colors.black26,),
                SizedBox(height: 7.sp),
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.device_unknown, color: Colors.black26,),
                SizedBox(height: 7.sp),
              ],
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.notifications, color: Colors.black26,),
                SizedBox(height: 7.sp),
              ],
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(Icons.person, color: Colors.black26,),
                SizedBox(height: 7.sp),
              ],
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
