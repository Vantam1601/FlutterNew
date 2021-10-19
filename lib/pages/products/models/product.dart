class Product {
  int? id;
  String? name;
  String? image;
  double? price;
  Product({this.id, this.name, this.image, this.price});
}

final List<Product> products = [
  Product(
    id: 1,
    name: 'Summer Loose Korean T-shirt',
    price: 30,
    image:
        'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ),
  Product(
    id: 2,
    name: 'Bat Sleeve Student T-shirt Summer',
    price: 30,
    image:
        'https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ),
  Product(
    id: 3,
    name: 'Summer New Korean Version',
    price: 25,
    image:
        'https://images.unsplash.com/photo-1562572159-4efc207f5aff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  ),
  Product(
    id: 4,
    name: 'Loose-fitting Outside Shirt',
    price: 30,
    image:
        'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Product(
    id: 5,
    name: 'Cotton Short-sleeved T-shirt',
    price: 20,
    image:
        'https://images.unsplash.com/photo-1541257710737-06d667133a53?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];
