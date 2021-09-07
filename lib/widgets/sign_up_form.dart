import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/validations/signup_validation.dart';
import 'package:provider/provider.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignUpValidation>(context);

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          children: [
            Spacer(),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Email", errorText: validationService.email.error),
              onChanged: (String value) {
                validationService.changeEmail(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  errorText: validationService.password.error,
                ),
                onChanged: (String value) {
                  validationService.changePassword(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  errorText: validationService.confirmPassword.error,
                ),
                onChanged: (String value) {
                  validationService.changeConfirmPassword(value);
                },
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: "yyyy-mm-dd",
                errorText: validationService.dateOfBirth.error,
              ),
              onChanged: (String value) {
                validationService.changeDateOfBirth(value);
              },
            ),
            Spacer(
              flex: 2,
            ),
            ElevatedButton(
              onPressed: () {
                if (validationService.isValid) {
                  validationService.submitData();
                } else {
                  print('Null');
                }
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
