import 'package:flutter/material.dart';
import './validation_item.dart';


class SignupValidation with ChangeNotifier {

  ValidationItem _firstName = ValidationItem(null,null);
  ValidationItem _lastName = ValidationItem(null,null);
  ValidationItem _dob = ValidationItem(null,null);
  ValidationItem _email = ValidationItem(null,null);
  ValidationItem _pass = ValidationItem(null,null);
  ValidationItem _cpass = ValidationItem(null,null);



  //Getters
  ValidationItem get email => _email;
  ValidationItem get pass => _pass;
  ValidationItem get cpass => _cpass;
  ValidationItem get firstName => _firstName;
  ValidationItem get lastName => _lastName;
  ValidationItem get dob => _dob;
  bool get isValid {
    if (_lastName.value != null && _firstName.value != null && dob.value != null && email.value != null && pass.value  == cpass.value ){
      return true;
    } else {
      return false;
    }
  }

  //Setters
  void changeFirstName(String value){
    if (value.length >= 3){
      _firstName=ValidationItem(value,null);
    } else {
      _firstName=ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }
  void changeEmail(String value){
    if (value.length >= 3){
      _email=ValidationItem(value,null);
    } else {
      _email=ValidationItem(null, "Must be at least 3 characters");
    }

    notifyListeners();
  }
  void changePass(String value){
    if (value.length >= 6){
      _pass=ValidationItem(value,null);
    } else {
      _pass=ValidationItem(null, "Must be at least 6 characters");
    }
    notifyListeners();
  }

  void changeLastName(String value){
    if (value.length >= 3){
      _lastName=ValidationItem(value,null);
    } else {
      _lastName=ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void changeDOB(String value){
    try {
      DateTime.parse(value);
      _dob=ValidationItem(value,null);
    } catch(error){
      _dob =ValidationItem(null, "Invalid Format");
    }
    notifyListeners();
  }

  void submitData(){
    print("FirstName: ${firstName.value}, LastName: ${lastName.value}, ${DateTime.parse(dob.value!)}");
  }


}