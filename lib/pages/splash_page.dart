import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/intro_page.dart';
import 'package:flutter_app/pages/root_app.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:flutter_app/utils/image_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        this.context,
        MaterialPageRoute(builder: (context) => RootApp()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
            ),
            SizedBox(height: 20),
            Text(
              "Shop Fashion & Design Art".toUpperCase(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: grey.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
