import 'package:demoplashscreen/json/constant.dart';
import 'package:flutter/material.dart';
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: getBody()
    );
  }
 Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20 , right: 20 , top: 20 ),
          child: Row(
            children: [
              Container(
                width: 130 ,
                height: 130 ,
                decoration: BoxDecoration(
                      borderRadius:  BorderRadius.circular(10) ,
                      image: DecorationImage(
                      image: NetworkImage(profileUrl),fit: BoxFit.cover)),
              ),
              SizedBox(height: 20 ,) ,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tiến Đẹp Trai",
                    style: TextStyle(
                      fontSize: 20 , fontWeight: FontWeight.w400 ,
                    ),),
                    Text("Memmber since 2019",
                      style: TextStyle(
                        fontSize: 13 , fontWeight: FontWeight.w400 ,
                      ),),
                    SizedBox(height: 20 ,) ,
                    FlatButton(onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      color: Colors.black,
                      child: Text( "EDIT ACCOUNT" ,style: TextStyle(
                        color: Colors.white
                      ),),),

                  ],
                ),
              ) ,
              SizedBox(height: 40,)
            ],
          ),
        ) ,
        SizedBox(height:  40 ,) ,
        Padding(
          padding: const EdgeInsets.only(left: 20 , right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  children: [
                    Icon( Icons.folder , color: Colors.black,) ,
                    SizedBox(width: 10,) ,
                    Text("Oders" , style: TextStyle(
                      fontSize: 13  ,
                    ),)
                  ]
              ),
              Row(
                  children: [
                    Icon( Icons.add_location_alt_sharp , color: Colors.black,) ,
                    SizedBox(width: 10,) ,
                    Text("My Local" , style: TextStyle(
                      fontSize: 13  ,
                    ),)
                  ]
              ),
              Row(
                  children: [
                    Icon( Icons.settings_applications , color: Colors.black,) ,
                    SizedBox(width: 10,) ,
                    Text("Setting" , style: TextStyle(
                      fontSize: 13  ,
                    ),)
                  ]
              ),
            ],
          ),
        ) ,
        SizedBox(height:  30 ,) ,
        Padding(
          padding: const EdgeInsets.only(left: 20 , right: 20 ) ,
          child: Column(
            children: List.generate(accountList.length , (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(accountList[index].toString(), style: TextStyle(
                            fontSize: 16
                        ),),
                        Icon(Icons.arrow_forward_ios, size: 16,color: Colors.blueAccent.withOpacity(0.5),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      color: Colors.grey.withOpacity(0.8),

                    )
                  ],
                ),
              ) ;
            }),
          ),
        )
      ],
    );
  }
}
