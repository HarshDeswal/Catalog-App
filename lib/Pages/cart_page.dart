import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: MyTheme.darkBluishColor,
        title: "Cart".text.make(),
      ),
    );
  }
}
