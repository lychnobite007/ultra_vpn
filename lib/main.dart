import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:ultra_vpn/screens/refer_friend_screen.dart';

import 'components/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ultra VPN',
          home:  BottomNavigationClass(),
          routes: {
            '/referAFriend': (context) => ReferFriendScreen(),
          },
        );
      }
    );
  }
}


