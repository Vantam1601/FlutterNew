//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = new List.filled(0, new Slide(), growable: true);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(new Slide(
        title: "Hello Word",
        description: "tien dep trai qua di hâhaahhha",
        pathImage: "assets/images/logo.png"));
    slides.add(new Slide(
        title: "Hello Word X2",
        description: "tien dep trai qua di hâhaahhha",
        pathImage: "assets/images/logo.png"));
    slides.add(new Slide(
        title: "Hello Word X3",
        description: "tien dep trai qua di hâhaahhha",
        pathImage: "assets/images/logo.png"));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List.filled(0, new Column(), growable: true);
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 160, top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(120),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Image.asset(
                  currentSlide.pathImage!,
                  matchTextDirection: true,
                  height: 60,
                ),
              ),
              Container(
                child: Text(
                  currentSlide.title!,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  currentSlide.description!,
                  style:
                      TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              )
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.green,
      renderSkipBtn: Text('Skip'),
      renderNextBtn: Text(
        'Next',
        style: TextStyle(color: Colors.green),
      ),
      renderDoneBtn: Text(
        'Done',
        style: TextStyle(color: Colors.green),
      ),
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      hideStatusBar: false,
    );
  }
}
