import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CustomeCarouselProduct extends StatefulWidget {
  final List<String>? items;

  CustomeCarouselProduct({this.items});

  @override
  _CustomeCarouselProductState createState() =>
      _CustomeCarouselProductState();
}

class _CustomeCarouselProductState extends State<CustomeCarouselProduct> {
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
                           Column(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(widget.items!.length, (index) =>buidDot(index))
                                ),
                             ],
                           ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),

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