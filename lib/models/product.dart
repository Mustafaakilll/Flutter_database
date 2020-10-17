class Product {
  int id;
  String name;
  String description;
  double price;

  Product(this.name, this.description, this.price);
  Product.withId(this.id, this.name, this.description, this.price);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = name;
    map["description"] = description;
    map["price"] = price;

    if (id != null) {
      map["id"] = id;
    }
    return map;
  }

  Product.fromObject(dynamic o) {
    this.id = int.tryParse(o["id"].toString());
    this.name = o["name"];
    this.description = o["description"];
    this.price = double.tryParse(o["price"].toString());
  }
}
