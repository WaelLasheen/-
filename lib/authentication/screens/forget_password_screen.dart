import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/consts/colors.dart';
import 'package:kiswa/consts/images.dart';
import 'package:kiswa/authentication/widgets/text_feild.dart';
import 'package:kiswa/firebase/authentication/auth_services.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _email = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "هل نسيت الكلمة المرور؟",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'اعادة تعيين كلمة المرور',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            textFeild(
              hint: 'أدخل البريد الالكتروني ',
              icon: Icons.email_outlined,
              controller: _email,
              obscureText: false,
              obscureIcon: const SizedBox(),
            ),
            Image.asset(
              Forget_Password,
              scale: 1.1,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () async {
                  print(_email.text);
                  await AuthServices().forgetPassword(_email.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'تم ارسال رابط استعادة كلمة المرور الي بريدك الالكتروني'),
                    ),
                  );
                  
                  Navigator.of(context).pop();
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(green),
                ),
                child: const Text(
                  'تابع',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(white),
                ),
                child: const Text(
                  'الغاء',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
