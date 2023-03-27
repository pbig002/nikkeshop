import 'package:flutter/material.dart';
import 'package:intern/page/homePage.dart';
import 'package:intern/page/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 239, 247, 255)),
      routes: {
        "/": (context) => LoginScreen(),
        "HomePage": (context) => HomePage(),
      },
    );
  }
}
