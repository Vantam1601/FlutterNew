import 'package:flutter/material.dart';
import 'package:flutter_app/json/constant.dart';
import 'package:flutter_app/themes/color.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          children: List.generate(cartList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              cartList[index]['img'].toString(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartList[index]['name'],
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "ref: " + cartList[index]['ref'],
                            style: TextStyle(
                              fontSize: 13,
                              color: black.withOpacity(0.7),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            cartList[index]['size'],
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                cartList[index]['price'],
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(width: 50),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: black,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: white.withOpacity(0.8),
                                      onPrimary: white.withOpacity(0.2),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text("1"),
                                  SizedBox(width: 15),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                      color: black,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: white.withOpacity(0.8),
                                      onPrimary: white.withOpacity(0.2),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
        Divider(color: grey.withOpacity(0.8)),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "Do you have a promotion code?",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 15),
        Divider(color: grey.withOpacity(0.8)),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Standard - Free",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(50 / 2),
            ),
            child: Center(
              child: Text(
                "Buy For \$50".toUpperCase(),
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
