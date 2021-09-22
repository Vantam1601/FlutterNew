import 'package:flutter/material.dart';

showAlerDialog(
    BuildContext context, String title, String msg, Function onYesAction) {
  Widget okButton = TextButton(
    onPressed: () {
      onYesAction();
      Navigator.pop(context);
    },
    child: Text("OK"),
  );
  Widget cancelButton = TextButton(
    onPressed: () => Navigator.pop(context),
    child: Text("Cancel"),
  );
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [okButton, cancelButton],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
