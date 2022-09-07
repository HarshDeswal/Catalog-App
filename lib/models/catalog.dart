class CatalogModel {
  static final products = [
    Item(
        id: 001,
        name: "Iphone 12 Pro",
        desc: "Apple Iphone 12th generation",
        price: 999,
        color: "#33505a")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;

  Item(
      {this.id = 000,
      this.name = "",
      this.desc = "",
      this.price = 00,
      this.color = "#33505a"});
}

final products = [
  Item(
      id: 001,
      name: "Iphone 12 Pro",
      desc: "Apple Iphone 12th generation",
      price: 999,
      color: "#33505a")
];
