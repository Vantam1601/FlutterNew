import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/onboard/widgets/onboard_content.dart';
import 'package:flutter_app/pages/root_app.dart';
import 'package:flutter_app/themes/color.dart';
import 'package:flutter_app/utils/image_url.dart';
import 'package:flutter_app/utils/size_config.dart';
import 'package:flutter_app/widgets/button_style.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> getStartValue = [
    {
      "title": "Shopping Smart",
      "desc": "Welcome to OREO Store",
      "image": getting_start_get_start_1,
    },
    {
      "title": "Focus UX",
      "desc": "Personalization of User Experience",
      "image": getting_start_get_start_2,
    },
    {
      "title": "Creative Concept",
      "desc": "Duscovering new horizons",
      "image": getting_start_get_start_3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              itemCount: getStartValue.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (context, index) => OnBoardContent(
                title: getStartValue[index]["title"],
                desc: getStartValue[index]["desc"],
                image: getStartValue[index]["image"],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    getStartValue.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                Spacer(flex: 3),
                CustomButton(
                  stringParam: "Get Started",
                  textColorParam: white,
                  buttonColorParam: black,
                  functionParam: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RootApp()),
                  ),
                  sizeWidthParam: MediaQuery.of(context).size * 0.8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? black : black.withOpacity(0.65),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
