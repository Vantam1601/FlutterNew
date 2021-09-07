import 'package:flutter/material.dart';
import 'package:flutter_demo1/src/screens/signup.dart';
import 'package:provider/provider.dart';
import '../validation/signup_validation.dart';

class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Sign In"),),
      body: Center(
        child: SafeArea(
          child: Column(
            children:<Widget> [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.supervised_user_circle),
                  labelText: "Username",
                  errorText: validationService.firstName.error,
                ),
                onChanged: (String value) {
                  validationService.changeFirstName(value);
                },
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "PassWord",
                  errorText: validationService.firstName.error,
                ),
                onChanged: (String value) {
                  validationService.changeFirstName(value);
                },
              ) ,
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('Sign In'),
                onPressed:  (!validationService.isValid) ? null : validationService.submitData,
              ),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text('Sign Up'),
                textColor: Colors.lightBlue,
                onPressed:  (){
                  Navigator.of(context).push(_createRoute());
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Signup(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}