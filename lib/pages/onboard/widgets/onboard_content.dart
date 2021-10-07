import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:flutter_app/utils/size_config.dart';

class OnBoardContent extends StatelessWidget {
  final String? title;
  final String? desc;
  final String? image;

  const OnBoardContent({
    Key? key,
    this.title,
    this.desc,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image!,
          height: getPropotionateScreenHeight(265),
          width: getPropotionateScreenWidth(235),
        ),
        Spacer(flex: 2),
        Text(
          title!,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: black,
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
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
