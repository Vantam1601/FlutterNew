import '../../../pages/products/models/product.dart';

class CartItem {
  final int? id;
  int? quantity;
  Product? item;
  CartItem({this.id, this.quantity, this.item});

  Map<String, dynamic> toMap() {
    return {'quantity': quantity, 'product_id': item!.id};
  }
}
