import 'package:flutter/material.dart';

class CustomTheme {
  BuildContext? context;
  TextTheme? textTheme;
  ThemeData? _primaryTheme;

  CustomTheme(BuildContext context) {
    this.context = context;
    this.textTheme = Theme.of(context).textTheme;
    _primaryTheme = ThemeData(primaryColor: Colors.white);
  }
  ThemeData? get primaryTheme => _primaryTheme;
}
