import 'package:flutter/material.dart';
import 'package:kiswa/Notifications/Notification.dart';
import 'package:kiswa/widgets/Customappbar.dart';
import 'package:kiswa/homescreens/screen2.dart';
import 'package:kiswa/widgets/buttons.dart';

import 'screen1.dart';

class screen3 extends StatefulWidget {
  @override
  State<screen3> createState() {
    return followers();
  }
}

class followers extends State<screen3> {
  int _selectindex = 2;
  _onIndexChanged(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Customappbar(automaticallyImplyLeading: false),
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(children: [
                Buttons(
                  selectedIndex: _selectindex,
                  onIndexChanged: _onIndexChanged,
                ),
                Image.asset("assets/images/Frame93.png"),
                Image.asset("assets/images/Frame94.png")
              ]),
            )));
  }
}
