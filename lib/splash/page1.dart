import 'package:flutter/material.dart';
import 'package:kiswa/splash/page2.dart';

class page1 extends StatelessWidget {
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
                  return Page2();
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
            child: Image.asset("assets/images/image1.png"),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "ساعد في تحقيق الاستدامه ومساعدة الآخرين من خلال تبرعك بالملابس التي لم تعد بحاجه إليها",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Image.asset("assets/images/Frame 61.png")
        ],
      ),
    );
  }
}
