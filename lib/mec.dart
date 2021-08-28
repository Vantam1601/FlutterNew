import 'package:flutter_app/car.dart';

/*
  Kế thừa trong dart
  - truyền giá trị thông qua super(key:value)
  - truyền đúng kiểu dữ liệu được kế thừa
 */

class Merc extends Car {
  String? color;

  Merc({
    String? name,
    int? year,
    this.color
  }) :super(name: name, year: year);

  @override
  String toString() {
    return '\n ${this.name} - ${this.year} - ${this.color}';
  }
  @override
  showInfo() {
    // TODO: implement showInfo
    print('=>>>> function show info in class Merc');
  }
  @override
  totalNumber(dynamic a, dynamic b, dynamic c) => a + b +c;



}
