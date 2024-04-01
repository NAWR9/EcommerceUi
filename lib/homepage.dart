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
          SizedBox(
            height: 30,
          ),
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.laptop,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Laptop")
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.menu_book_rounded,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Book")
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.toys,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Toys")
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.electrical_services,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("electricity")
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
