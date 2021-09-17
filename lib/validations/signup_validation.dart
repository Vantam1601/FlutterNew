import 'package:flutter/material.dart';
import 'package:flutter_app/validations/validation_item.dart';

/*
  flutter form
  savereferences
  cơ chế build form
  form kết hợp với provider
  alear value form
*/
class SignUpValidation with ChangeNotifier {
  ValidationItem _fname = ValidationItem(null, null);
  ValidationItem _lname = ValidationItem(null, null);
  ValidationItem _username = ValidationItem(null, null);
  ValidationItem _numphone = ValidationItem(null, null);
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _password = ValidationItem(null, null);

  ValidationItem get firstName => _fname;
  ValidationItem get lastName => _lname;
  ValidationItem get userName => _username;
  ValidationItem get numberPhone => _numphone;
  ValidationItem get email => _email;
  ValidationItem get password => _password;

  bool get isValid {
    if (_fname.value != null &&
        _lname.value != null &&
        _username.value != null &&
        _numphone.value != null &&
        _email.value != null &&
        _password.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changeFirstName(String value) {
    if (value.isNotEmpty) {
      _fname = ValidationItem(value, null);
    } else {
      _fname = ValidationItem(null, "First name not null");
    }
    notifyListeners();
  }

  void changeLastName(String value) {
    if (value.isNotEmpty) {
      _lname = ValidationItem(value, null);
    } else {
      _lname = ValidationItem(null, "Last name not null");
    }
    notifyListeners();
  }

  void changeUserName(String value) {
    if (value.isNotEmpty) {
      _email = ValidationItem(value, null);
    } else {
      _email = ValidationItem(null, "User name not null");
    }
    notifyListeners();
  }

  void changeNumberPhone(String value) {
    if (value.isNotEmpty && value.length == 10) {
      _numphone = ValidationItem(value, null);
    } else {
      _numphone = ValidationItem(null, "Number Phone not null");
    }
    notifyListeners();
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
    print(
        "FirstName: ${_fname.value},LastName: ${_lname.value},Number phone: ${_numphone.value},Email: ${_email.value}, password: ${_password.value}");
  }
}
