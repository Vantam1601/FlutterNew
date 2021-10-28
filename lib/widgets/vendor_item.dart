import 'package:flutter/material.dart';
import '../../themes/color.dart';

class VendorItem extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? desc;
  const VendorItem({Key? key, this.imgUrl, this.title, this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      color: gray.withOpacity(0.2),
      child: TextButton(
        onPressed: () => print("Vendor"),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                      imgUrl!,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 5),
            Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: black.withOpacity(0.8),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  desc!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: grey.withOpacity(0.6),
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  size: 16,
                  color: yellow,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
