import 'package:flutter/material.dart';
import 'package:flutter_app/pages/root_app.dart';
import 'package:flutter_app/utils/image_url.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Shopping Smart",
            body: "Welcome to OREO Store",
            image: buildImage(getting_start_get_start_1),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Focus UX",
            body: "Personalization of User Experience",
            image: buildImage(getting_start_get_start_2),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Creative Concept",
            body: "Duscovering new horizons",
            image: buildImage(getting_start_get_start_3),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        //rtl: true, // Display as right-to-left
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: getDotDecoration(),
        onChange: (index) => print('Page $index selected'),
        globalBackgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => RootApp()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: double.infinity));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
