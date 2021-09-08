import 'package:flutter/material.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/signin/signin_screen.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';
import 'package:flutter_app/screens/welcom/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcom Oreo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              chat_svg,
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundButton(
              text: "SignIn",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignInScreen();
                    },
                  ),
                );
              },
            ),
            RoundButton(
              text: "SignUp",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
              color: Colors.white70,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
