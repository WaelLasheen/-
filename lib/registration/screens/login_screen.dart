import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kiswa/registration/widgets/text_feild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("إنشاء حساب"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'البريد الالكتروني',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            textFeild(hint: 'أدخل البريد الالكتروني ', icon:Icons.email_outlined, controller:_email,
               obscureText: false ,obscureIcon: const SizedBox()),
            const Text(
              'كلمة المرور',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            textFeild(
                hint:'أدخل كلمة المرور',icon: Icons.lock,controller: _password,obscureText: _obscureText , obscureIcon:
                IconButton(
                  onPressed: ()=>setState(()=>_obscureText = !_obscureText),
                  icon: _obscureText? const Icon(Icons.visibility_off,color: Colors.grey,): const Icon(Icons.visibility, color: Colors.green),
                ),
              ),
            ElevatedButton(
                onPressed: () {
                  print(_email.text);
                  print(_password.text);
                },
                child: const Text('تسجيل الدخول'))
          ],
        ),
      ),
    );
  }

}
