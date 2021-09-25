import 'package:flutter/material.dart';
import 'package:flutter_app/json/constant.dart';
import 'package:flutter_app/pages/account_page.dart';
import 'package:flutter_app/pages/cart_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/more_page.dart';
import 'package:flutter_app/pages/store_page.dart';
import 'package:flutter_app/themes/color.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  AppBar? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  PreferredSizeWidget? getAppBar() {
    switch (activeTab) {
      case 0:
        appBar = null;
        break;
      case 1:
        appBar = null;
        break;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "ACCOUNT",
            style: TextStyle(
              color: black,
            ),
            textAlign: TextAlign.center,
          ),
        );
        break;
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "CART",
            style: TextStyle(color: black),
            textAlign: TextAlign.center,
          ),
        );
        break;
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "MORE",
            style: TextStyle(color: black),
            textAlign: TextAlign.center,
          ),
        );
        break;
      default:
    }
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        StorePage(),
        AccountPage(),
        CartPage(),
        MorePage(),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: white,
        border: Border(
          top: BorderSide(
            color: grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  activeTab = index;
                });
              },
              icon: Icon(
                itemsTab[index]['icon'],
                size: itemsTab[index]['size'],
                color: activeTab == index ? accent : black,
              ),
            );
          }),
        ),
      ),
    );
  }
}
