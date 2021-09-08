import 'package:flutter/material.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/components/round_password.dart';
import 'package:flutter_app/components/round_social_button.dart';
import 'package:flutter_app/components/round_textinput.dart';
import 'package:flutter_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RoundTextInput(
            hintText: "First name *",
            onChanged: (value) {},
          ),
          RoundTextInput(
            hintText: "Last name *",
            onChanged: (value) {},
          ),
          RoundTextInput(
            hintText: "User name *",
            onChanged: (value) {},
          ),
          RoundTextInput(
            hintText: "Number phone *",
            onChanged: (value) {},
          ),
          RoundTextInput(
            hintText: "Email *",
            onChanged: (value) {},
          ),
          RoundPaswordFiled(
            onChanged: (value) {},
          ),
          RoundButton(
            text: "Sign Up",
            color: Colors.black,
            press: () {},
          ),
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
        ],
      ),
    );
  }
}
