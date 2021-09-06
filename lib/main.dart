import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation Login',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white38,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.symmetric(
                vertical: defaultPadding * 1.2, horizontal: defaultPadding),
          )),
      home: AuthScreen(),
    );
  }
}

//void main(List<String> args) {
//  runApp(
//    ChangeNotifierProvider(
//      create: (context) => MySettings(),
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        home: MyApp(),
//      ),
//    ),
//  );
//}
//
//class MySettings extends ChangeNotifier {
//  String _text = 'Text';
//  Color _color = Colors.black;
//
//  /*
//    Nếu không có notifyListeners thì giao diện sẽ không được cập nhật ngay.
//    GetX ?
//   */
//  void changeText() {
//    if (_text == 'Text') {
//      _text = "change text when click button";
//    } else {
//      _text = "Text";
//    }
//    notifyListeners();
//  }
//
//  set newColor(Color newColor) {
//    _color = newColor;
//    notifyListeners();
//  }
//
//  void changeColor() {
//    if(_color == Colors.black) {
//      _color = Colors.blue;
//    } else {
//      _color = Colors.black;
//    }
//    notifyListeners();
//  }
//}
//
//class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Consumer<MySettings>(
//      builder: (context, mySettings, child) {
//        return Scaffold(
//          appBar: AppBar(
//            title: Text(
//              "Provider Demo",
//            ),
//            backgroundColor: mySettings._color,
//          ),
//          drawer: Drawer(
//            child: Center(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  ElevatedButton(
//                    onPressed: () {
//                      mySettings.changeText();
//                      Navigator.pop(context);
//                    },
//                    child: Text('Chang text'),
//                  ),
//                  ElevatedButton(
//                    onPressed: () {
//                      mySettings.changeColor();
//                      Navigator.pop(context);
//                    },
//                    child: Text('Chang Color'),
//                  ),
//                  ElevatedButton(
//                    onPressed: () {
//                      mySettings.newColor = Colors.red;
//                      Navigator.pop(context);
//                    },
//                    child: Text('Chang app red color'),
//                  )
//                ],
//              ),
//            ),
//          ),
//          body: Center(
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: [
//                ElevatedButton(
//                  onPressed: () {
//                    mySettings.changeText();
//                  },
//                  child: Text("Click"),
//                ),
//                Text(
//                  "${mySettings._text}",
//                ),
//              ],
//            ),
//          ),
//        );
//      },
//    );
//  }
//}
