import 'package:flutter/material.dart';
import 'package:learning_app/grid_view.dart';
import 'package:learning_app/list_view_screen.dart';
import 'package:learning_app/profile_screen.dart';

void main(List<String> args) {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-ROBOT Mobile App'),
        leading: const Icon(Icons.menu),
      ),
      // body: buildName("E-Robot"),
      // body: buildNewName(name: "Jonh Smith"),
      body: SizedBox(
        width: double.infinity,
        // color: Colors.cyan,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListScreen(),
                  ),
                )
              },
              child: const Text('Shopping List'),
            ),
            IconButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyGridScreen(),
                    ))
              },
              icon: const Icon(Icons.face),
            ),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      )
                    },
                child: const Text('Profile'))
          ],
        ),
      ),
    );
  }

  buildName(String name) {
    return Text("My Name is $name");
  }

  buildNewName({required String name}) {
    return Text(
      "Hello new name $name",
      style: const TextStyle(
          fontSize: 20,
          color: Colors.redAccent,
          decoration: TextDecoration.lineThrough),
    );
  }
}
