import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cart/provider/cart.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          title: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Cart",
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cart.count.toString() + "item",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: gray.withOpacity(0.8),
                  ),
                )
              ],
            ),
          ),
        ),
        body: cart.basketItems.length == 0
            ? Text("data")
            : ListView.builder(
                itemCount: cart.basketItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(cart.basketItems[index].name!),
                      subtitle: Text(cart.basketItems[index].price.toString()),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          cart.remove(cart.basketItems[index]);
                        },
                      ),
                    ),
                  );
                },
              ),
      );
    });
  }
}
