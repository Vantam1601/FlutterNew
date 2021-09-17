import 'package:flutter/material.dart';
import 'package:flutter_app/components/round_button.dart';
import 'package:flutter_app/components/round_divider.dart';
import 'package:flutter_app/components/round_password.dart';
import 'package:flutter_app/components/round_social_button.dart';
import 'package:flutter_app/components/round_textinput.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/validations/signup_validation.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _validationService = Provider.of<SignUpValidation>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RoundTextInput(
            hintText: "First name *",
            errorText: _validationService.firstName.error,
            onChanged: (value) {
              _validationService.changeFirstName(value);
            },
          ),
          RoundTextInput(
            hintText: "Last name *",
            errorText: _validationService.lastName.error,
            onChanged: (value) {
              _validationService.changeLastName(value);
            },
          ),
          RoundTextInput(
            hintText: "User name *",
            errorText: _validationService.userName.error,
            onChanged: (value) {
              _validationService.changeUserName(value);
            },
          ),
          RoundTextInput(
            hintText: "Number phone *",
            errorText: _validationService.numberPhone.error,
            onChanged: (value) {
              _validationService.changeNumberPhone(value);
            },
          ),
          RoundTextInput(
            hintText: "Email *",
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
            text: "Sign Up",
            color: Colors.black,
            press: () {
              _validationService.isValid
                  // ignore: unnecessary_statements
                  ? null
                  : _validationService.submitData();
            },
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
        ],
      ),
    );
  }
}
