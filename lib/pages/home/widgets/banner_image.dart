import 'package:flutter/cupertino.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/themes/color.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    homeImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              right: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "20% Off Evething".toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Use code: OREO".toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
