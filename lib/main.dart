import 'package:flutter/material.dart';
import 'package:flutter_app/screens/welcom/welcom_screen.dart';
import 'package:flutter_app/validations/signin_validation.dart';
import 'package:flutter_app/validations/signup_validation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignInValidation>(
          create: (_) => SignInValidation(),
        ),
        ChangeNotifierProvider<SignUpValidation>(
          create: (_) => SignUpValidation(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Orep Demo',
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: WelcomScreen(),
      ),
    );
  }
}
