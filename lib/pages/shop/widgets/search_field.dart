import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class SearchField extends StatelessWidget implements PreferredSizeWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
      height: 50,
      decoration: BoxDecoration(
        color: gray.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search Product",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(5),
            child: Icon(
              Icons.search,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
