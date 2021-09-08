import 'package:flutter/material.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/components/round_divider.dart';
import 'package:flutter_app/components/round_password.dart';
import 'package:flutter_app/components/round_social_button.dart';
import 'package:flutter_app/components/round_textinput.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RoundTextInput(
            hintText: "Email adress or Username *",
            onChanged: (value) {},
          ),
          RoundPaswordFiled(
            onChanged: (value) {},
          ),
          RoundButton(
            text: "Sign In",
            press: () {},
            color: Colors.black87,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Forgot password?",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialButton(
                    iconSrc: facebook_svg,
                    press: () {},
                  ),
                  SocialButton(
                    iconSrc: facebook_svg,
                    press: () {},
                  ),
                  SocialButton(
                    iconSrc: facebook_svg,
                    press: () {},
                  ),
                ],
              ),
              RoundButton(
                text: "Sign Up",
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
                color: Colors.blueGrey,
              )
            ],
          ),
        ],
      ),
    );
  }
}
