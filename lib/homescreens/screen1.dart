import 'package:flutter/material.dart';
import 'package:kiswa/Notifications/Notification.dart';
import 'package:kiswa/widgets/Customappbar.dart';
import 'package:kiswa/homescreens/screen2.dart';
import 'package:kiswa/homescreens/screen3.dart';
import 'package:kiswa/widgets/buttons.dart';

class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() {
    return articles();
  }
}

class articles extends State<screen1> {
  List<String> article = [
    "assets/images/Frame 85.png",
    "assets/images/Frame 86.png",
    "assets/images/Frame 87.png",
    "assets/images/Frame 88.png",
    "assets/images/Frame 89.png"
  ];
  int _selectedIndex = 0;

  _onIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Buttons(
              selectedIndex: _selectedIndex,
              onIndexChanged: _onIndexChanged,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: article.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Image.asset(
                      article[index],
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
