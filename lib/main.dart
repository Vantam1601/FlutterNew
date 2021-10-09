

import 'package:demoplashscreen/intro_slider.dart';
import 'package:flutter/material.dart';
//import 'splashscreen.dart';
//ham main
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //goi splash screen
      home: IntroSliderPage(),
    );
  }
}
//class splash screen



