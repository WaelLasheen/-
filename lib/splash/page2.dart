import 'package:flutter/material.dart';
import 'package:kiswa/splash/page1.dart';
import 'package:kiswa/splash/page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 120, right: 220),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Page3();
                }));
              },
              child: Text(
                "تخطى",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade500,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/image2.png",
              height: 400,
              width: 400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "اختر القطع التي ترغب في التبرع بها وصورها وشاركها عبر تطبيقنا لتصل الي مستحقيها",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Image.asset("assets/images/Frame62.png")
        ],
      ),
    );
  }
}
