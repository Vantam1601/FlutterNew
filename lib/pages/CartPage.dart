import 'package:demoplashscreen/json/constant.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  getBody() {
    return ListView(
      children: [
        Column(
          children: List.generate(cartList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    cartList[index]['img'].toString()),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartList[index]['name'],
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ref : " + cartList[index]['ref'],
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Size : " + cartList[index]['size'],
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Price: " + cartList[index]['price'],
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: <Widget>[],
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                child: Center(
                                  child: Icon(
                                    Icons.add_box_outlined,
                                    size: 25,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                child: Center(
                                  child: Icon(
                                    Icons.indeterminate_check_box_outlined,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              ),
            );
          }),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "Do you have a promotion code ?",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Colors.lightBlue,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                " Deliverry",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                " Standart - Free",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50 / 2),
            ),
            child: Center(
              child: Text(
                " Mua ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
