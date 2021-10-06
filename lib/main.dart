import 'package:flutter/material.dart';
import 'package:flutter_app/pages/splash_page.dart';

void main() {
  runApp(OreoFashion());
}

class OreoFashion extends StatelessWidget {
  const OreoFashion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
