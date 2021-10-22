import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart/cart_page.dart';
import 'package:flutter_app/pages/cart/provider/cart.dart';
import 'package:flutter_app/pages/products/models/product.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:provider/provider.dart';

class DetailProduct extends StatelessWidget {
  final Product? product;
  const DetailProduct({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: red,
                      ),
                      child: Text(
                        cart.count.toString(),
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: black,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
