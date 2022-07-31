import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> users = [
      'Chocolate chips',
      'Flour',
      'Egge',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text(index.toString())),
              title: Text('Good evening'),
            ),
          );
        },
      ),
    );
  }
}
