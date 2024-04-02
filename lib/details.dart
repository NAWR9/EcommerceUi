import 'package:flutter/material.dart';

class itemDetails extends StatefulWidget {
  final data;
  const itemDetails({super.key, this.data});

  @override
  State<itemDetails> createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  TextStyle col = const TextStyle(color: Colors.black);
  TextStyle col2 = const TextStyle(color: Colors.grey);
  TextStyle? temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(fontSize: 16),
          selectedItemColor: Colors.orange,
          iconSize: 38,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "*"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopify_outlined), label: "*"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "*")
          ]),
      endDrawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 35),
        centerTitle: true,
        title:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        children: [
          Container(
              color: Colors.grey[200],
              child: Image.asset(widget.data["image"])),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.data["title"],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            widget.data["description"],
            style: const TextStyle(fontSize: 18, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            widget.data["price"],
            style: const TextStyle(
                fontSize: 20,
                color: Colors.orange,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Color:",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 5),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey)),
              const Text("Grey"),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 5),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
              ),
              const Text("Grey"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Size:",
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    temp = col;
                    col = col2;
                    col2 = temp!;
                  });
                },
                child: Text(
                  "39",
                  style: col,
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "40",
                  style: TextStyle(color: Colors.grey),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "41",
                  style: TextStyle(color: Colors.grey),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "42",
                  style: TextStyle(color: Colors.grey),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "43",
                  style: TextStyle(color: Colors.grey),
                )),
          ]),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            child: MaterialButton(
              height: 50,
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
              child: const Text("Add to cart"),
            ),
          )
        ],
      ),
    );
  }
}
