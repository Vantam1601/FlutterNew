import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class CartItem extends StatelessWidget {
  final String? sizeCart;
  final String? imgUrl, name, price, start;
  final Function()? favoriteFunc, addCartFunc;
  const CartItem(
      {Key? key,
      this.imgUrl,
      this.name,
      this.price,
      this.start,
      this.favoriteFunc,
      this.addCartFunc,
      this.sizeCart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () => print("Cart item"), // Handle your callback.
              splashColor: Colors.brown.withOpacity(0.5),
              child: Ink(
                height: sizeCart == "big" ? 200 : 175,
                width: sizeCart == "big" ? 180 : 165,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
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
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
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
              ),
            )
          ],
        ),
        SizedBox(height: 5),
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
                ),
              ),
              SizedBox(height: 5),
              Text(
                "\$ " + price!,
                style: TextStyle(
                  color: grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
