import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String? text;
  final Function()? press;
  final Color? color, textColor;

  const RoundButton(
      {Key? key,
      this.text,
      this.press,
      this.color = Colors.purple,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
          ),
          onPressed: press!,
          child: Text(
            text!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
