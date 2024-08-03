import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "مؤسسه مرسال الخيرية",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
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
