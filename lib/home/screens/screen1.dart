import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() {
    return articles();
  }
}

class articles extends State<screen1> {
  int selectindex = 0;
  List<String> article = [
    "assets/images/Frame 85.png",
    "assets/images/Frame 86.png",
    "assets/images/Frame 87.png",
    "assets/images/Frame 88.png",
    "assets/images/Frame 89.png"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
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
    );
  }
}
