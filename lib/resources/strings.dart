import 'package:flutter_app/localization/app_localization.dart';

const String APP_TITLE = 'SHOP UI';

late final String firstTime = "first_time";

class Strings {
  var passwordLabel = AppLocalization.instance.text('passwordLabel');
  var errorMsgPwd = AppLocalization.instance.text('errorMsgPwd');

  var errorMsgCommon = AppLocalization.instance.text('errorMsgCommon');
  var forgotPassword = AppLocalization.instance.text('forgotPassword');

  var errorMsgEmail = AppLocalization.instance.text('errorMsgEmail');
  var emailLabel = AppLocalization.instance.text('emailLabel');

  var registerTitle = AppLocalization.instance.text('registerTitle');
  var firstName = AppLocalization.instance.text('firstName');
  var lastName = AppLocalization.instance.text('lastName');
  var username = AppLocalization.instance.text('username');
  var dob = AppLocalization.instance.text('dob');

  var dummyShipping1 = AppLocalization.instance.text('dummyShipping1');
  var loginTitle = AppLocalization.instance.text('loginTitle');
  var facebook = AppLocalization.instance.text('facebook');
  var google = AppLocalization.instance.text('google');
}
