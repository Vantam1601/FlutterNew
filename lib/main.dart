import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation Login',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white38,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.symmetric(
                vertical: defaultPadding * 1.2, horizontal: defaultPadding),
          )),
      home: AuthScreen(),
    );
  }
}
