import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class TitleContent extends StatelessWidget {
  final String? title;
  final String? textParam;
  final Function()? functionPress;
  const TitleContent({
    Key? key,
    this.title,
    this.textParam,
    this.functionPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: functionPress!,
            hoverColor: white.withOpacity(0.6),
            child: Text(
              textParam!,
              style: TextStyle(
                fontSize: 16,
                color: grey.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
