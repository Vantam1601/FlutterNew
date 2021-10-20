class Category {
  static const ID = 'id';
  static const NAME = 'name';
  static const IMAGE = 'image';

  int? id;
  String? name;
  String? image;
  Category({this.id, this.name, this.image});

  // CategoryModel.fromSnapshot(DocumentOrShadowRoot snapshop) {
  //   _id = snapshop.data[ID];
  //   _name = snapshop.data[NAME];
  //   _image = snapshop.data[IMAGE];
  // }

}

final List<Category> categories = [
  Category(
    id: 1,
    name: "Tops",
    image:
        "https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80",
  ),
  Category(
    id: 2,
    name: "Women",
    image:
        "https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80",
  ),
  Category(
    id: 3,
    name: "Main",
    image:
        "https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80",
  ),
  Category(
    id: 4,
    name: "Shoes",
    image:
        "https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80",
  ),
  Category(
    id: 5,
    name: "Tshirts",
    image:
        "https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80",
  ),
];
