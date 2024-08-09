import 'package:flutter/material.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/homescreens/screen2.dart';
import 'package:kiswa/homescreens/screen3.dart';

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
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectindex = 0;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => screen1()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => screen3()));
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
