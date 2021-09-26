import 'package:flutter/material.dart';
import 'package:flutter_app/json/constant.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      profileUrl,
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
                    "Daniel",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Member since 2019",
                    style: TextStyle(
                      fontSize: 18,
                      color: black.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Edit Account",
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
                      padding: const EdgeInsets.all(20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.box,
                    color: black,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.mapMarker,
                    color: black,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "My Address",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.cog,
                    color: black,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(thickness: 1),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: List.generate(accountList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          accountList[index].toString(),
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: black.withOpacity(0.4),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(color: grey.withOpacity(0.8))
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
