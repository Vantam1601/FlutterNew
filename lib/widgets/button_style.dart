import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final String? stringParam;
  final Color? buttonColorParam, textColorParam;
  final Function()? functionParam;
  final Size? sizeWidthParam;

  const CustomButton(
      {Key? key,
      this.stringParam,
      this.buttonColorParam,
      this.functionParam,
      this.textColorParam,
      this.sizeWidthParam})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: sizeWidthParam!.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextButton(
            onPressed: functionParam!,
            child: Text(
              stringParam!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColorParam,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: buttonColorParam,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
          ),
        ),
      );
}
