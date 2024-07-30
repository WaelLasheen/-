import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
        ),
      ),
    );
  }
}
