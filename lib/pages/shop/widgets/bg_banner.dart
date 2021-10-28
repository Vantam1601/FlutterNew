import 'package:flutter/material.dart';
import '../../../resources/image_url.dart';
import '../../../themes/color.dart';

class BackgroundBanner extends StatelessWidget {
  const BackgroundBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        height: 80,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(bg_banner),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Up to 40% Off Holiday Bit",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
