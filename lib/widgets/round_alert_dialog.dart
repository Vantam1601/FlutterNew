import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String? message;
  final String? title;
  final double padding = 16.0;
  const CustomDialog({Key? key, this.message, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          buildContent(),
        ],
      ),
    );
  }

  Widget buildContent() {
    return Container(
      padding: EdgeInsets.all(padding),
      alignment: Alignment.center,
      child: Column(
        children: [],
      ),
    );
  }
}
