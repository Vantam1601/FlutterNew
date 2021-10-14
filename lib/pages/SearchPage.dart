import 'package:demoplashscreen/theme/colors.dart';
import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }


  getBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2) ,
                    borderRadius: BorderRadius.circular(10) ,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                        border: InputBorder.none ,
                        prefixIcon : Icon(
                         Icons.search,size: 20 ,
                        ) ,
                        hintText: "Search Product"
                      ),
                    ),
                  ),
                ),
          ) ,),
        ],
      ),


    ) ;
  }
}
