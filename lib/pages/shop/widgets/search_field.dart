import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/resources/image_url.dart';
import 'package:flutter_app/themes/color.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search ...",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              search_light,
            ),
          ),
        ),
      ),
    );
  }
}
