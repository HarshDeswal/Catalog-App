class CatalogModel {
  static var products = [
    Item(
        id: 001,
        name: "Iphone 12 Pro",
        desc: "Apple Iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
  static Item getById(int id) =>
      products.firstWhere((element) => element.id == id, orElse: null);
  static Item getByPosition(int pos) => products[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id = 1,
      this.name = "",
      this.desc = "",
      this.price = 00,
      this.color = "",
      this.image = ""});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}

final products = [
  Item(
      id: 001,
      name: "Iphone 12 Pro",
      desc: "Apple Iphone 12th generation",
      price: 999,
      color: "#33505a")
];
