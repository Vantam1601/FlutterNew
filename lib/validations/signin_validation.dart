import 'package:flutter/material.dart';
import 'package:flutter_app/validations/validation_item.dart';

class SignInValidation with ChangeNotifier {
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _password = ValidationItem(null, null);

  ValidationItem get email => _email;

  ValidationItem get password => _password;

  bool get isValid {
    if (_email.value != null && _password.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changeEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (regex.hasMatch(value)) {
      _email = ValidationItem(value, null);
    } else {
      _email = ValidationItem(null, "Email is incorrect");
    }
    notifyListeners();
  }

  void changePassword(String value) {
    if (value.length >= 3) {
      _password = ValidationItem(value, null);
    } else {
      _password = ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void submitData() {
    print("Email: ${_email.value}, password: ${_password.value}");
  }
}
