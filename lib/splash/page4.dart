import 'package:flutter/material.dart';
import 'package:kiswa/authentication/screens/login_screen.dart';
import 'package:kiswa/authentication/screens/signup_screen.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/image4.png",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                ".معا نستطيع أن نصنع فرقا:تعاونا مع الشركاء يضمن توزيع الملابس بأفضل طريقه ممكنه",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/Frame4.png" ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color(0xFF84BF60),
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                  },
                  child: const Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  color: Color(0xFF84BF60),
                  textColor: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SighupScreen()));
                  },
                  child: const Text(
                    "إنشاء حساب",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
