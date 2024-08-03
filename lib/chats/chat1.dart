import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/Frame_487-removebg-preview.png",
            )
          ],
        ),
      ),
    ));
  }
}
