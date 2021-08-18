import 'package:flutter/material.dart';
import 'calculation.dart';
import 'car.dart';
import 'mec.dart';

void main() {
//  numbers.forEach((number) {
//    print(number);
//  });

//  stringNumbers.forEach((str) {
//    print(str);
//  });
  var myCar = Merc(
    name:'Mercedes G63',
    year: 2020,
    color: 'Blue'
  );
  myCar.showInfo();

  List<Merc> mers = <Merc>[
    Merc(name:'G63',year: 2020,color: 'black'),
    Merc(name:'AMG',year: 2020,color: 'black'),
    Merc(name:'C200',year: 2021,color: 'black'),
    Merc(name:'C500',year: 2020,color: 'yewllow'),
  ];

  mers.sort((a,b)=>a.name!.compareTo(b.name!));
  //mers.sort((a,b)=>a.year!-b.year!);

  //Update item
  //var filterCar = mers.where((car)=>car.year == 2020 && car.name!.contains("Mercedes")).toList();
  runApp (
    Center(child: Text(
      mers.toString(),
      style: TextStyle(fontSize: 20),
      textDirection: TextDirection.ltr,
    )),
  );
}