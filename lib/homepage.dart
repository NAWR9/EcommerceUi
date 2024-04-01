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
              const SizedBox(width: 8),
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
          )
        ],
      ),
    ));
  }
}
