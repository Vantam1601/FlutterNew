import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class CartItem extends StatelessWidget {
  final String? imgUrl, name, price, start;
  final Function()? favoriteFunc, addCartFunc;
  const CartItem(
      {Key? key,
      this.imgUrl,
      this.name,
      this.price,
      this.start,
      this.favoriteFunc,
      this.addCartFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(
                    imgUrl!,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 15,
              ),
              child: SizedBox(
                width: 32,
                child: TextButton(
                  onPressed: favoriteFunc!,
                  child: Icon(
                    Icons.favorite_border,
                    color: white,
                    size: 18,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    width: 32,
                    child: TextButton(
                      onPressed: addCartFunc!,
                      child: Icon(
                        Icons.add,
                        color: white,
                        size: 18,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: black,
                      ),
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(height: 15),
        Container(
          width: 140,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: black,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "\$ " + price!,
                style: TextStyle(
                  color: grey,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
