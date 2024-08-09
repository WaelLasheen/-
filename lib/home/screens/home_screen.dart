import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/home/screens/all_donations.dart';
import 'package:kiswa/home/screens/screen1.dart';
import 'package:kiswa/home/screens/screen2.dart';
import 'package:kiswa/home/screens/screen3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 3);
    _pageController = PageController(initialPage: 3);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_sharp,
                        size: 35,
                      ),
                    ),
                    const Positioned(
                      left: 23,
                      top: 12,
                      child: Icon(
                        Icons.circle,
                        color: green,
                        size: 10,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: green,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: RichText(
                  text: const TextSpan(
                    text: " أهلا",
                    style: TextStyle(
                        color: black,
                        fontSize: 30.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w900),
                    children: [
                      TextSpan(
                        text: "إسراء ",
                        style: TextStyle(
                          fontSize: 30,
                          color: green,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'ابرز المتبرعين'),
              Tab(text: 'انجازات الشهر'),
              Tab(text: 'مقالات متنوعه'),
              Tab(text: 'التبرعات'),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                _tabController.animateTo(index);
              },
              children: [
                screen3(),
                screen2(),
                screen1(),
                const AllDonations(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
