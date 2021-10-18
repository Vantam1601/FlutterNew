class CategoryModel {
  static const ID = 'id';
  static const NAME = 'name';
  static const IMAGE = 'image';

  int? _id;
  String? _name;
  String? _image;

  int? get id => _id;
  String? get name => _name;
  String? get image => _image;

  // CategoryModel.fromSnapshot(DocumentOrShadowRoot snapshop) {
  //   _id = snapshop.data[ID];
  //   _name = snapshop.data[NAME];
  //   _image = snapshop.data[IMAGE];
  // }

}
