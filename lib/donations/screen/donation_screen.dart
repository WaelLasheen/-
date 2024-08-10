import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/donations/screen/add_donation.dart';
import 'package:kiswa/donations/screen/get_my_donations.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
    _pageController = PageController(initialPage: 1);

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
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'إضافة تبرع جديد'),
              Tab(text: 'تبرعاتى'),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                _tabController.animateTo(index);
              },
              children: [
                AddDonation(),
                const MyDonations(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
