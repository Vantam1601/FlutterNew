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
      children: List.generate(cartList.length, (index){
        return Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: 140,
                    height: 180 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10) ,
                      image: DecorationImage(
                        image: NetworkImage(cartList[index]['img'].toString()) ,
                        fit: BoxFit.cover
                      )
                    ),
                ) ,
                SizedBox(width: 20,) ,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartList[index]['name'] ,
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                    SizedBox(height: 10,) ,
                    Text(
                      "ref : "+cartList[index]['ref'] ,
                      style: TextStyle(
                          fontSize: 13, color: Colors.black.withOpacity(0.7)
                      ),
                    ),
                    SizedBox(height: 10,) ,
                    Text(
                      "Size : "+cartList[index]['size'] ,
                      style: TextStyle(
                          fontSize: 20 ,
                      ),
                    ),
                    SizedBox(height: 20,) ,
                    Row(
                      children: <Widget>[
                        Text(
                          "Price: "+cartList[index]['price'] ,
                          style: TextStyle(
                            fontSize: 20 ,color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 20,) ,
                        Row(
                          children: <Widget>[],
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black.withOpacity(0.5))
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add
                            ),
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black.withOpacity(0.5))
                          ),
                          child: Center(
                            child: Icon(
                                Icons.minimize_outlined
                            ),
                          ),
                        )
                      ],
                    ),
                  ],

                ) ,
              ],

            ),
            Divider(
              color: Colors.grey,
            )
          ],
        );
      }),
    );
  }
}