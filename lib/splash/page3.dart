import 'package:flutter/material.dart';
import 'package:kiswa/splash/page1.dart';
import 'package:kiswa/splash/page4.dart';

class Page3 extends StatelessWidget {
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
                  return Page4();
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
              "assets/images/image3.png",
              height: 400,
              width: 400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              " .قصتنا تبدأ بك :ساهم في حماية البيئة وتقليل الهدر بينما تقدم العون للأسر المحتاجة",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Image.asset("assets/images/Frame3.png")
        ],
      ),
    );
  }
}
