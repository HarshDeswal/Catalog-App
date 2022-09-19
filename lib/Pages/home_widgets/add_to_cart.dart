import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:my_first_app/core/store.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;

    bool? isInCart = _cart?.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
          //setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            MyTheme.darkBluishColor,
          ),
          shape: MaterialStateProperty.all(
            const StadiumBorder(),
          )),
      child: isInCart
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
