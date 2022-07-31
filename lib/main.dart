import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ListItem(),
      home: MyHome2(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          leading: const Icon(Icons.menu),
        ),
        // body: buildName("E-Robot"),
        // body: buildNewName(name: "Jonh Smith"),
        body: Container(
          width: double.infinity,
          color: Colors.cyan,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("I'm learning flutter"),
              const Text("I'm learning flutter"),
              // SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 3,
                      color: Colors.pink,
                    ),
                    boxShadow: const [BoxShadow(blurRadius: 8)]),
                child: const Text('Container'),
              ),
              // SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.person),
                    Text(
                      'E-Robot',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
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

class MyHome2 extends StatelessWidget {
  const MyHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://media.istockphoto.com/vectors/astronomical-observations-vector-id596802284?k=20&m=596802284&s=612x612&w=0&h=h9fuv7sWjlJvsZbfMSJpO6VBzOue7N3azrMDOQxnVoc='),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 5, color: Colors.purple)),
                      child: const CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfwHQHYv5xLnd7JlPYultkm-jRiSOX0str8A&usqp=CAU'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Jonh Smith',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.add_circle_outline_sharp,
                          size: 40,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.airplanemode_active_sharp,
                          size: 40,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.home_outlined,
                          size: 40,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
