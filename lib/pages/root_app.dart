import 'package:flutter/material.dart';
import 'package:flutter_app/data/list_icon.dart';
import 'package:flutter_app/pages/cart/cart_page.dart';
import 'package:flutter_app/pages/home/home_page.dart';
import 'package:flutter_app/pages/profile/profile_page.dart';
import 'package:flutter_app/pages/shop/shop_page.dart';
import 'package:flutter_app/pages/wish_page.dart';
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
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        ShopPage(),
        WishListPage(),
        CartPage(),
        ProfilePage(),
      ],
    );
  }

  Widget? getFooter() {
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
            return Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  },
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: activeTab == index ? black : gray.withOpacity(0.5),
                  ),
                ),
                Text(
                  itemsTab[index]['name'],
                  style: TextStyle(
                    color: activeTab == index ? black : gray.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
