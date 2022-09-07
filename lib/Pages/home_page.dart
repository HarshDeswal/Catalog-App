import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/widgets/drawer.dart';
import 'package:my_first_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  final dummylist = List.generate(10, (index) => CatalogModel.products[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummylist[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
