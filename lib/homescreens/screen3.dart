import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  @override
  State<screen3> createState() {
    return followers();
  }
}

class followers extends State<screen3> {
  int selectindex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Image.asset("assets/images/Frame93.png"),
            Image.asset("assets/images/Frame94.png")
          ],
        ),
      ),
    );
  }
}
