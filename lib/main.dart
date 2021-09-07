import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo1/src/validation/signup_validation.dart';
import 'package:flutter_demo1/src/screens/signin.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignupValidation(),
       child :  MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
       home:signin() ,
     ),
     );
  }
}
