import 'package:my_first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_first_app/core/store.dart';

class CartModel {
  // catalog field

  CatalogModel? _catalog;
  // collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  //
  CatalogModel? get catalog => _catalog;
  set catalog(CatalogModel? newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog!.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price!);

  // Add item

}

class AddMutation extends VxMutation<MyStore> {
  Item? item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart?._itemIds.add(item!.id!);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  Item? item;

  RemoveMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart?._itemIds.remove(item!.id);
  }
}
