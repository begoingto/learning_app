import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key}) : super(key: key);
  final List<String> users = [
    'Chocolate chips',
    'Flour',
    'Egge',
  ];

  @override
  Widget build(BuildContext context) {
    users.sort();
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Shopping List'))),
      body: Column(
        children: [for (var item in users) myList(item)],
      ),
    );
  }

  myList(String fullName) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              fullName[0],
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Text(
            fullName,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
