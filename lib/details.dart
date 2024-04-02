import 'package:flutter/material.dart';

class itemDetails extends StatefulWidget {
  final data;
  const itemDetails({super.key, this.data});

  @override
  State<itemDetails> createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(size: 35),
        centerTitle: true,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.ads_click),
          Text(
            " Ecommerce ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Osamah",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          )
        ]),
      ),
      body: ListView(
        children: [Image.asset(widget.data["image"])],
      ),
    );
  }
}
