import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kiswa/chat/chat.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/donations/screen/donation_screen.dart';
import 'package:kiswa/home/screens/home_screen.dart';
import 'package:kiswa/setting/screens/settings.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const Settings(),
        const DonationScreen(),
        chat1(),
        const HomeScreen(),
      ][currentPageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.settings ,color: white,),
          Icon(Icons.inbox ,color: white,),
          Icon(Icons.message,color: white,),
          Icon(Icons.home_outlined ,color: white,),
        ],
        index: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: orange,
        color: green,
      ),
    );
  }
}


