import 'package:flutter/material.dart';
import 'package:flutter_app/components/text_field_container.dart';

class RoundTextInput extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  const RoundTextInput({
    Key? key,
    this.hintText,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          errorText: errorText,
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal),
          ),
        ),
      ),
    );
  }
}
