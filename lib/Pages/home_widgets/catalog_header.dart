import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl2.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl.make(),
      ],
    );
  }
}
