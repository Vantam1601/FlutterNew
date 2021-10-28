import 'package:flutter/material.dart';
import '../../../pages/cart/cart_page.dart';
import '../../../pages/cart/provider/cart.dart';
import '../../../resources/image_url.dart';
import '../../../themes/color.dart';
import 'package:provider/provider.dart';

class AppBarHome extends StatefulWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  _AppBarHomeState createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return AppBar(
          backgroundColor: white,
          title: Align(
            alignment: Alignment.center,
            child: Image.asset(logo),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
