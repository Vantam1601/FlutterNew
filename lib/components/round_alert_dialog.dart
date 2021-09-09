import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  final String? email;
  final String? password;
  const MyAlertDialog({Key? key, this.email, this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        alignment: Alignment.center,
        height: 20,
        width: 20,
        child: Column(
          children: [
            Text(
              email!,
            ),
            Text(
              password!,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        new TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("OK"),
        ),
        new TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Canel"),
        )
      ],
    );
  }
}
