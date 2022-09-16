import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({required this.catalog}) : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl.purple800.make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  MyTheme.darkBluishColor,
                ),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                )),
            child: "Add to cart".text.make(),
          )
        ],
      ),
      backgroundColor: MyTheme.creamColor,
      body: Column(
        children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h16(context),
          Expanded(
              child: VxArc(
            height: 5.0,
            child: Container(
              color: Colors.white,
              child: Column(children: [
                catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                2.heightBox,
                "Elitr est voluptua magna ipsum ea kasd diam. Eos eirmod eirmod dolore dolor et.adas  edfasca adfasf "
                    .text
                    .textStyle(context.captionStyle)
                    .make()
                    .p4(),
              ]).p20(),
            ),
          ))
        ],
      ).p16(),
    );
  }
}
