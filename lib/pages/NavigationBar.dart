import 'package:flutter/material.dart';
import 'package:demoplashscreen/json/constant.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50 , left: 30 , right: 20),
        child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20 ) ,
            child: Column(
              children: List.generate(accountList.length , (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(accountList[index].toString(), style: TextStyle(
                              fontSize: 16
                          ),),
                          Icon(Icons.arrow_forward_ios, size: 16,color: Colors.blueAccent.withOpacity(0.5),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Divider(
                        color: Colors.grey.withOpacity(0.8),

                      )
                    ],
                  ),
                ) ;
              }),
            ),
          )
        ],
        ),
      ),
    );
  }
}
