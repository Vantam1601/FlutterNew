import 'package:demoplashscreen/json/constant.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getbody(),
    );
  }
  getbody(){
  return ListView(
    children: [
      Column(
        children: List.generate(favoritestList.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      width: 140,
                      height: 180 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10) ,
                          image: DecorationImage(
                              image: NetworkImage(favoritestList[index]['img'].toString()) ,
                              fit: BoxFit.cover
                          )
                      ),
                    ) ,
                    SizedBox(width: 20,) ,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favoritestList[index]['name'] ,
                          style: TextStyle(
                              fontSize: 18
                          ),
                        ),
                        SizedBox(height: 10,) ,
                        Text(
                          "ref : "+favoritestList[index]['ref'] ,
                          style: TextStyle(
                              fontSize: 13, color: Colors.black.withOpacity(0.7)
                          ),
                        ),
                        SizedBox(height: 10,) ,
                        Text(
                          "Size : "+favoritestList[index]['size'] ,
                          style: TextStyle(
                            fontSize: 20 ,
                          ),
                        ),
                        SizedBox(height: 20,) ,
                        Row(
                          children: <Widget>[
                            Text(
                              "Price: "+favoritestList[index]['price'] ,
                              style: TextStyle(
                                  fontSize: 20 ,color: Colors.grey
                              ),
                            ),
                            ElevatedButton(
                                onPressed:(){},
                                child: Text("Add to cart")
                            )

                          ],
                        ),
                      ],

                    ) ,
                  ],

                ),
              ],

            ),
          ) ;
        }),
      )
    ],
  );
  }
}
