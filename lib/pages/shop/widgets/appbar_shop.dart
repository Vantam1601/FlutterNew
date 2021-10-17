import 'package:flutter/material.dart';
import 'package:flutter_app/pages/shop/search_page.dart';
import 'package:flutter_app/themes/color.dart';

class AppBarSearch extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      height: 60,
      decoration: BoxDecoration(
        color: gray.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchPage(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 5),
              Text(
                "Search Product",
                style: TextStyle(
                  color: gray.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
