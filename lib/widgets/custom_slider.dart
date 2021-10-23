import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CustomeCarouselHomePage extends StatefulWidget {
  final List<String>? items;

  CustomeCarouselHomePage({this.items});

  @override
  _CustomeCarouselHomePageState createState() =>
      _CustomeCarouselHomePageState();
}

class _CustomeCarouselHomePageState extends State<CustomeCarouselHomePage> {
  int activeIndex = 0;
  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: CarouselSlider(
                options: CarouselOptions(height: 180.0),
                items: widget.items!.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: Image(
                              image: NetworkImage(item),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Positioned(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(widget.items!.length, (index) =>buidDot(index))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                      height: 35,
                      width: 35,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.black,
                        child: Icon(Icons.arrow_forward, size: 20,),
                      ),

                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ],
    );
  }
  buidDot(int index) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      margin: EdgeInsets.only(right: 5),
      height: 6, width:activeIndex==index ? 10:6,
      decoration: BoxDecoration(
          color:  activeIndex == index ? Colors.deepOrange : Colors.grey,
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }

}
