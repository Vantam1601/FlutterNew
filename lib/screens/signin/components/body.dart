import 'package:flutter/material.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/components/round_divider.dart';
import 'package:flutter_app/components/round_password.dart';
import 'package:flutter_app/components/round_social_button.dart';
import 'package:flutter_app/components/round_textinput.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/models/login.dart';
import 'package:flutter_app/models/login_share_pref.dart';
import 'package:flutter_app/screens/signup/signup_screen.dart';
import 'package:flutter_app/validations/signin_validation.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  LoginSharedPref _loginSharedPref = LoginSharedPref();
  LoginAuth loginSave = LoginAuth();
  LoginAuth loginLoad = LoginAuth();

  loadSharedPref() async {
    try {
      LoginAuth loginAuth =
          LoginAuth.fromJson(await _loginSharedPref.read("loginAuth"));
      Scaffold.of(context).showBottomSheet(
        (context) => Column(
          children: [
            Text("Loaded"),
          ],
        ),
      );
      setState(() {
        loginLoad = loginAuth;
      });
    } catch (Excepetion) {
      Scaffold.of(context).showBottomSheet((context) => Text("Nothing found!"));
    }
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
              setState(() {
                loginSave.email = value;
              });
            },
          ),
          RoundPaswordFiled(
            errorText: _validationService.password.error,
            onChanged: (value) {
              _validationService.changePassword(value);
              setState(() {
                loginSave.password = value;
              });
            },
          ),
          RoundButton(
            text: "Sign In",
            press: () {
              _validationService.isValid
                  // ignore: unnecessary_statements
                  ? null
                  : _validationService.submitData();
              _loginSharedPref.save("loginAuth", loginSave);
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
                    press: () {
                      loadSharedPref();
                    },
                  ),
                  SocialButton(
                    iconSrc: facebook_svg,
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
