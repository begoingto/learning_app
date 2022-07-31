import 'package:flutter/material.dart';

class MyGridScreen extends StatelessWidget {
  const MyGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Grid View')),
        backgroundColor: Colors.grey,
        body: GridView(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          children: List.generate(20, (index) {
            return Card(
              color: Colors.white,
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'This is title ${index + 1}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Text(
                        "Data tables display information in a grid-like format of rows and columns. They organize information in a way that's easy to scan")
                  ],
                ),
              ),
            );
          }),
        ));
  }
}
