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
    final List<MyCar> images = [
      const MyCar(
        name: 'My both',
        image:
            'https://www.1auto.co/storage/ready_for_sales/20220216171927_2022-chevrolet-corvette-z06-1607016574.jpg',
      ),
      const MyCar(
        name: 'carsguide-res',
        image:
            'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/2020-Chevrolet-Corvette-Stingray-Coupe-Red-1001x565_0.JPG',
      )
    ];
    /*final List<Map<String, dynamic>> gridCard = [
      {
        'image':
            'https://www.1auto.co/storage/ready_for_sales/20220216171927_2022-chevrolet-corvette-z06-1607016574.jpg',
        'name': 'My card'
      },
      {
        'image':
            'https://thumbor.forbes.com/thumbor/fit-in/1200x0/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5d35eacaf1176b0008974b54%2F0x0.jpg%3FcropX1%3D790%26cropX2%3D5350%26cropY1%3D784%26cropY2%3D3349',
        'name': 'My card 2'
      },
      'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/2020-Chevrolet-Corvette-Stingray-Coupe-Red-1001x565_0.JPG',
      'https://www.focus2move.com/wp-content/uploads/2018/08/Bugatti-Divo-2019-1.jpg',
      'https://www.proton.com/-/media/project/proton-group/proton/media/car-models/x70/2022-x70/x70-mc1-booknow-thumb.ashx?la=en&hash=D6DCDD26F54A46285CEB78B0636E723D8185C194',
      'https://i.ytimg.com/vi/dip_8dmrcaU/maxresdefault.jpg'
    ];*/

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
                    builder: (context) => MyGridScreen(images: images),
                  ),
                )
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
              child: const Text('Profile'),
            )
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

class MyCar {
  const MyCar({required this.name, required this.image});
  final String name;
  final String image;
}
