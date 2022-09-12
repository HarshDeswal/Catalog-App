import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/widgets/drawer.dart';
import 'package:my_first_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Codepur";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadDate();
  }

  loadDate() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");

    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.products = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: (CatalogModel.products != null && CatalogModel.products.isNotEmpty)
          ? ListView.builder(
              itemCount: CatalogModel.products.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: CatalogModel.products[index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
