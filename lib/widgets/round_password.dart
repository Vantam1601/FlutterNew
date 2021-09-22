import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/text_field_container.dart';

class RoundPaswordFiled extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String? errorText;
  const RoundPaswordFiled({
    Key? key,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          errorText: errorText,
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal),
          ),
          suffixIcon: Icon(Icons.visibility),
        ),
      ),
    );
  }
}
