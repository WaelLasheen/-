import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/homescreens/screen2.dart';

import 'screen1.dart';

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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Stack(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_sharp,
                        size: 35,
                      )),
                  const Positioned(
                      left: 23,
                      top: 12,
                      child: Icon(
                        Icons.circle,
                        color: green,
                        size: 10,
                      ))
                ],
              ),
              CircleAvatar(
                backgroundColor: green,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: RichText(
                text: const TextSpan(
                    text: " أهلا",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w900),
                    children: [
                      TextSpan(
                          text: "إسراء ",
                          style: TextStyle(
                              fontSize: 30,
                              color: green,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold))
                    ]),
              ),
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectindex = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => screen1()));
                          });
                        },
                        child: Text(
                          "مقالات التوعية",
                          style: TextStyle(
                              color: selectindex == 0
                                  ? black
                                  : litegrey,
                              fontSize: 30),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectindex = 1;
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return screen2();
                          }));
                        },
                        child: Text("إنجازات الشهر",
                            style: TextStyle(
                              color: selectindex == 1
                                  ? black
                                  : litegrey,
                              fontSize: 30,
                            )),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            selectindex = 2;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screen3()));
                        },
                        child: Text(
                          "أبرز المتبرعين",
                          style: TextStyle(
                              color: selectindex == 2
                                  ? black
                                  : litegrey,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset("assets/images/Frame93.png"),
                Image.asset("assets/images/Frame94.png")
              ]),
            )));
  }
}
