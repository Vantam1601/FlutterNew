import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/themes/color.dart';

class CustomeCarouselHomePage extends StatefulWidget {
  final List<String>? items;
  const CustomeCarouselHomePage({Key? key, this.items}) : super(key: key);

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
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          width: size.width,
          child: CarouselSlider(
            items: widget.items!.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        width: size.width,
                        child: Image(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: size.width,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayAnimationDuration: Duration(seconds: 2),
              viewportFraction: 1.0,
              onPageChanged: setActiveDot(activeIndex),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(widget.items!.length, (idx) {
              return activeIndex == idx ? ActiveDot() : InactiveDot();
            }),
          ),
        ),
      ],
    );
  }
}

class ActiveDot extends StatelessWidget {
  const ActiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 25,
        height: 8,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  const InactiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
