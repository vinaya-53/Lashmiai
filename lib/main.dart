import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/loginpage.dart';
import 'package:lakshmiai/View/Pages/splashscreen.dart';
import 'package:lakshmiai/themee.dart';

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
      title: 'Flutter Demo',
      theme: Apptheme.thememode,
      home: Splashscrn(),
    );
  }
}

