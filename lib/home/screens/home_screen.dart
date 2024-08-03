import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/donations/screen/donation_screen.dart';
import 'package:kiswa/setting/screens/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const Settings(),
        const DonationScreen(),
        const Center(child: Text('الرسائل')),
        const Center(child: Text('الرئيسية')),
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


