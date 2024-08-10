import 'package:flutter/material.dart';
import 'package:kiswa/homescreens/screen1.dart';
import 'package:kiswa/homescreens/screen2.dart';
import 'package:kiswa/homescreens/screen3.dart';

class Buttons extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onIndexChanged;

  Buttons({required this.selectedIndex, required this.onIndexChanged});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: () {
              widget.onIndexChanged(0);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen1()),
              );
            },
            child: Text(
              "مقالات التوعية",
              style: TextStyle(
                color: widget.selectedIndex == 0
                    ? Color(0xFF1F201C)
                    : Color(0XFF848787),
                fontSize: 30,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              widget.onIndexChanged(1);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen2()),
              );
            },
            child: Text(
              "إنجازات الشهر",
              style: TextStyle(
                color: widget.selectedIndex == 1
                    ? Color(0xFF1F201C)
                    : Color(0XFF848787),
                fontSize: 30,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              widget.onIndexChanged(2);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen3()),
              );
            },
            child: Text(
              "أبرز المتبرعين",
              style: TextStyle(
                color: widget.selectedIndex == 2
                    ? Color(0xFF1F201C)
                    : Color(0XFF848787),
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
