import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../validation/signup_validation.dart';


class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "First Name",
                errorText: validationService.firstName.error,
              ),
              onChanged: (String value) {
                validationService.changeFirstName(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Last Name",
                errorText: validationService.lastName.error,
              ),
              onChanged: (String value) {
                validationService.changeLastName(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "DOB",
                  errorText: validationService.dob.error,
                  hintText: "yyyy-mm-dd"
              ),
              onChanged: (String value) {
                validationService.changeDOB(value);
              },
            ),
        TextFormField(
          decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: "example@gmail.com",
              labelText: "Email *",
              errorText: validationService.email.error,
          ),
            onChanged: (String value) {
              validationService.changeEmail(value);
            }
        ),
        TextFormField(
          decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "PassWord *",
              errorText: validationService.pass.error
          ),
            onChanged: (String value) {
              validationService.changePass(value);
            }
        ),TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Comfim PassWord *",
                    errorText: validationService.pass.error
                ),
                onChanged: (String value) {
                  validationService.changePass(value);
                }
            ),
            RaisedButton(
              child: Text('Submit'),
              onPressed:  (!validationService.isValid) ? null : validationService.submitData,
            )
          ],
        ),
      ),
    );
  }
}
