import 'package:demoplashscreen/theme/colors.dart';
import 'package:demoplashscreen/json/constant.dart';
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
    return ListView(
      children: [
        Padding(
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
        ) ,
        SizedBox( height:  40,),
        Padding(
          padding: const EdgeInsets.only(left: 20 , right: 20 ) ,
          child: Column(
            children: List.generate(accountList.length , (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 40 ,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius:  BorderRadius.circular(10) ,
                              image: DecorationImage(
                                  image: NetworkImage(profileUrl),fit: BoxFit.cover)),
                        ) ,
                        Text(accountList[index].toString(), style: TextStyle(
                            fontSize: 16
                        ),),
                        Icon(Icons.arrow_forward_ios, size: 16,color: Colors.blueAccent.withOpacity(0.5),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: Colors.grey.withOpacity(0.8),

                    )
                  ],
                ),
              ) ;
            }),
          ),
        )
      ],
    ) ;
  }
}
