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
                    "Winnoer",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: gray,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Salee",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: gray.withOpacity(0.9),
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
