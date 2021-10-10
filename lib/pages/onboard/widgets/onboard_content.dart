import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    this.title,
    this.desc,
    this.image,
  }) : super(key: key);

  final String? title;
  final String? desc;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image!,
          height: 365,
          width: 400,
        ),
        Spacer(),
        Text(
          title!,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: black,
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Text(
          desc!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: black.withOpacity(0.85),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
