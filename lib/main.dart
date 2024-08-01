import 'package:flutter/material.dart';
import 'package:kiswa/splash/logo.dart';
import 'package:kiswa/splash/page1.dart';

import 'package:kiswa/splash/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Cairo"),
      debugShowCheckedModeBanner: false,
      home: Logo(),
    );
  }
}
