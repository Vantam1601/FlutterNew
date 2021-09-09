import 'package:flutter/material.dart';
import 'package:flutter_app/components/round_alert_dialog.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/components/round_divider.dart';
import 'package:flutter_app/components/round_password.dart';
import 'package:flutter_app/components/round_social_button.dart';
import 'package:flutter_app/components/round_textinput.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';
import 'package:flutter_app/validations/signin_validation.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  void _showDialog(BuildContext context, String email, String password) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Thông báo"),
          content: Stack(
            children: [
              Text(email),
              Text(password),
            ],
          ),
          actions: <Widget>[
            new TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
            new TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Canel"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _validationService = Provider.of<SignInValidation>(context);
    return Container(
      width: double.infinity,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RoundTextInput(
            hintText: "Email adress or Username *",
            errorText: _validationService.email.error,
            onChanged: (value) {
              _validationService.changeEmail(value);
            },
          ),
          RoundPaswordFiled(
            errorText: _validationService.password.error,
            onChanged: (value) {
              _validationService.changePassword(value);
            },
          ),
          RoundButton(
            text: "Sign In",
            press: () {
              _showDialog(context, _validationService.email.toString(),
                  _validationService.password.toString());
              _validationService.isValid
                  // ignore: unnecessary_statements
                  ? null
                  : _validationService.submitData();
            },
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
