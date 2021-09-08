import 'package:flutter/material.dart';
import 'package:flutter_app/screens/welcom/welcom_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orep Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: WelcomScreen(),
    );
  }
}


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,fluu
//       title: 'Flutter Animation Login',
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           inputDecorationTheme: InputDecorationTheme(
//             filled: true,
//             fillColor: Colors.white38,
//             border: InputBorder.none,
//             hintStyle: TextStyle(color: Colors.white),
//             contentPadding: EdgeInsets.symmetric(
//                 vertical: defaultPadding * 1.2, horizontal: defaultPadding),
//           )),
//       home: AuthScreen(),
//     );
//   }
// }
