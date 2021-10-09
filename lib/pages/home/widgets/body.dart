import 'package:flutter/material.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/pages/home/widgets/custom_carousel.dart';
import 'package:flutter_app/pages/home/widgets/title_content.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:flutter_app/utils/image_url.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(height: 40),
        TitleContent(
          title: 'Categories',
          textParam: "Show all",
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage(
                            categories[index]['imgUrl'].toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            categories[index]['title'].toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: black,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 40),
        TitleContent(
          title: 'Vendors',
          textParam: "Show all",
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(vendors.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  width: 120,
                  height: 120,
                  color: gray.withOpacity(0.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                vendors[index]["imgUrl"],
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        vendors[index]["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: black.withOpacity(0.8),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            vendors[index]["star"].toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: grey.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.star,
                            size: 16,
                            color: yellow,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
