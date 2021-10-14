import 'package:demoplashscreen/json/constant.dart';
import 'package:demoplashscreen/pages/AccountPage.dart';
import 'package:demoplashscreen/pages/CartPage.dart';
import 'package:demoplashscreen/pages/HomePage.dart';
import 'package:demoplashscreen/pages/SearchPage.dart';
import 'package:demoplashscreen/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mi_app extends StatefulWidget {
  const Mi_app({Key? key}) : super(key: key);

  @override
  _Mi_app_PageState createState() => _Mi_app_PageState();
}

class _Mi_app_PageState extends State<Mi_app> {
  int activeTab = 0;
  AppBar? appbar =null ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.white,
          border: Border(
              top: BorderSide(color: grey.withOpacity(0.5)))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],
                  color: activeTab == index ? accent : black,),);
            })
        ),
      ),
    );
  }


  getAppBar() {
    switch(activeTab){
      case 0:
        return AppBar(
          elevation: 0.0 ,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.view_headline_outlined, color: Colors.black,),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.shopping_bag, color: Colors.black,),
              tooltip: 'Menu',
            )
          ],
          title: Text(
            'OREO', style: TextStyle(
              color: Colors.black
          ),
          ),
          centerTitle: true  ,

        ) ;
        break ;
      case 1:
        appbar = AppBar() ;
        break ;
      case 2:
        return AppBar(
          elevation: 0.0 ,
          backgroundColor: Colors.white,
          title: Text(
            'WishList', style: TextStyle(
              color: Colors.black
          ),
          ),
          centerTitle: true  ,
          actions: <Widget>[
            IconButton(
                onPressed: (){},
              icon: const Icon(Icons.shopping_bag, color: Colors.black,),
              tooltip: 'Menu',
            )
          ],
        flexibleSpace: Text('0 item', textAlign: TextAlign.center,),
        ) ;
        break ;
      case 3:
        return AppBar(
          elevation: 0.0 ,
          backgroundColor: Colors.white,
          title: Text(
            'Cart', style: TextStyle(
            color: Colors.black
          ),
          ),flexibleSpace: Text('0 item', textAlign: TextAlign.center,),
          centerTitle: true  ,

        ) ;
        break ;
      case 4:
        return AppBar(
          elevation: 0.0 ,
          backgroundColor: Colors.white,
          title: Text(
            'Account', style: TextStyle(
              color: Colors.black
          ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.shopping_bag, color: Colors.black,),
              tooltip: 'Menu',
            )
          ],
          centerTitle: true  ,

        ) ;
        break ;
      default :
    }
  }
  getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage() ,
        SearchPage() ,
        AccountPage(),
        CartPage(),
        AccountPage()

      ],
    );

  }
}



