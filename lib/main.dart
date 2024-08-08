import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kiswa/authentication/screens/login_screen.dart';
import 'package:kiswa/cache/cache_helper.dart';
import 'package:kiswa/firebase_options.dart';
import 'package:kiswa/home/screens/home_screen.dart';
import 'package:kiswa/splash/logo.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Roboto"),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? (CacheData.getData(key: "firstTime") != null? const LoginScreen() :  Logo()) : const HomeScreen(),
    );
  }
}