import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/validations/signin_validation.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignInValidation>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                errorText: validationService.email.error,
              ),
              onChanged: (String value) {
                validationService.changeEmail(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  errorText: validationService.password.error,
                ),
                onChanged: (String value) {
                  validationService.changePassword(value);
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(validationService.isValid) {
                  validationService.submitData();
                } else {
                  print('Null');
                }
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
