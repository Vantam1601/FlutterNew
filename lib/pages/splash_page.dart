import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/onboard/on_board.dart';
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
  Future<bool> isFirstTime() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var isFirstTime = pref.getBool('first_time');
    if (isFirstTime != null && !isFirstTime) {
      pref.setBool('first_time', false);
      return false;
    } else {
      pref.setBool('first_time', false);
      return true;
    }
  }

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      isFirstTime().then((isFirstTime) {
        isFirstTime
            ? Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return OnBoard();
                },
              ))
            : Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return RootApp();
                },
              ));
      });
    });
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
