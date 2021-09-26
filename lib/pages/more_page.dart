import 'package:flutter/material.dart';
import 'package:flutter_app/json/constant.dart';
import 'package:flutter_app/themes/color.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(profileUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "Daniel",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "4 Orders",
                    style: TextStyle(fontSize: 15, color: grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Divider(color: grey.withOpacity(0.8)),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(menusMore.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  menusMore[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              );
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 13,
                    color: white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 20, bottom: 20),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 13,
                    color: white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 20, bottom: 20),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
