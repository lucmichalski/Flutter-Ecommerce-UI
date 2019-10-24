class Product {

  final int _id;
  final String _name;
  final String _subTitle;
  final double _price;
  final String _image;
  final String _description;

  Product(this._id, this._name, this._subTitle, this._image, this._price, this._description);

  int getId() {
    return this._id;
  }

  String getName() {
    return this._name;
  }

  String getSubTitle() {
    return this._subTitle;
  }

  double getPrice() {
    return this._price;
  }

  String getImage() {
    return this._image;
  }

  String getDescription() {
    return this._description;
  }

}