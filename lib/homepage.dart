import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List Categories = [
    {"icon": Icons.laptop, "name": "Laptop"},
    {"icon": Icons.menu_book_rounded, "name": "Book"},
    {"icon": Icons.toys, "name": "Toys"},
    {"icon": Icons.electrical_services_rounded, "name": "Electricity 1"},
    {"icon": Icons.electrical_services_rounded, "name": "Electricity 2"},
    {"icon": Icons.electrical_services_rounded, "name": "Electricity 3"}
  ];

  List bestSelling = [
    {
      "image": "images/Laptop.jpg",
      "title": "Laptop",
      "description": "Good fine laptop",
      "price": "350\$"
    },
    {
      "image": "images/Watch.png",
      "title": "Watch",
      "description": "Good fine watch",
      "price": "150\$"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: [
              // const SizedBox(width: 8),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    fillColor: Colors.grey[200],
                    filled: true),
              )),
              const Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.menu,
                  size: 37,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Categories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Categories[index]["icon"],
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(Categories[index]["name"])
                  ],
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: const Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisExtent: 270,
              ),
              itemCount: bestSelling.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        color: Colors.grey[200],
                        width: 300,
                        child: Image.asset(
                          bestSelling[index]["image"],
                          height: 120,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 4),
                        child: Text(
                          bestSelling[index]["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          bestSelling[index]["description"],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          bestSelling[index]["price"],
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
    ));
  }
}
