import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product>? _items = [];
  double _totalPrice = 0;

  void add(Product item) {
    _items!.add(item);
    _totalPrice += item.price!;
    notifyListeners();
  }

  void remove(Product item) {
    _totalPrice -= item.price!;
    _items!.remove(item);
    notifyListeners();
  }

  int get count {
    return _items!.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Product> get basketItems {
    return _items!;
  }
}
