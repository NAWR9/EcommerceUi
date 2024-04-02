import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.laptop,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Laptop")
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.menu_book_rounded,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("Book")
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.toys,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Toys")
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.electrical_services,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("electricity")
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.electrical_services,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("electricity")
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.electrical_services,
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("electricity")
                  ],
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: const Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisExtent: 270,
            ),
            children: [
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.grey[200],
                      width: 300,
                      child: Image.asset(
                        "images/Laptop.jpg",
                        height: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, top: 4),
                      child: Text(
                        "Laptop",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Good fine laptop",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "350\$",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.grey[200],
                      width: 300,
                      child: Image.asset(
                        "images/Watch.png",
                        height: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, top: 4),
                      child: Text(
                        "Watch",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Good fine Watch",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "150\$",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
