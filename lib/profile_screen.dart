import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
