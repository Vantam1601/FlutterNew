import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Image.asset(fb_icon)),
        IconButton(onPressed: () {}, icon: Image.asset(linkedin_icon)),
        IconButton(onPressed: () {}, icon: Image.asset(twitter_icon)),
      ],
    );
  }
}
