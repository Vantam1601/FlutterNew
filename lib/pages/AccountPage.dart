import 'package:flutter/material.dart';
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: getBody()
    );
  }
 Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20 , right: 20),
          child: Row(
            children: [
              Container(
                width: 130 ,
                height: 130 ,
                decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(10) ,
                      image: DecorationImage(
                      image: NetworkImage("profileUrl"),fit: BoxFit.cover)),
              ),
              SizedBox(height: 20 ,) ,
              Column(
                children: [

                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
