import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../pages/home/home_page.dart';
import '../../../pages/shop/shop_page.dart';
import '../../../themes/color.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ShopPage(),
        ));
        break;
    }
  }

  Widget buildItemMenu({required String? text, VoidCallback? onClicked}) {
    return ListTile(
      title: Text(
        text!,
        style: TextStyle(
          color: black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      hoverColor: gray.withOpacity(0.05),
      onTap: onClicked,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Column(
                children: List.generate(
                  categories.length,
                  (index) => buildItemMenu(
                    text: categories[index]['title'].toString(),
                    onClicked: () => selectedItem(context, index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
