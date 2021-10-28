import 'package:flutter/material.dart';
import '../../../pages/cart/cart_page.dart';
import '../../../pages/cart/provider/cart.dart';
import '../../../themes/color.dart';
import 'package:provider/provider.dart';

class AppBarListProduct extends StatefulWidget {
  const AppBarListProduct({Key? key}) : super(key: key);

  @override
  _AppBarListProductState createState() => _AppBarListProductState();
}

class _AppBarListProductState extends State<AppBarListProduct> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return AppBar(
          backgroundColor: white,
          title: Align(
            alignment: Alignment.center,
            child: Text(
              "data",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
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
        );
      },
    );
  }
}
