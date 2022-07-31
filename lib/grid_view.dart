import 'package:flutter/material.dart';

class MyGridScreen extends StatelessWidget {
  const MyGridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          backgroundColor: Color(0xff0c111d),
        ),
        backgroundColor: Color(0xff0c111d),
        body: GridView(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: List.generate(20, (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff0c111d),
                border: Border.all(
                  width: 2,
                  color: Color(0xffed5401),
                ),
                boxShadow: [BoxShadow()],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: GridTile(
                  child: Image.network(
                    'https://www.1auto.co/storage/ready_for_sales/20220216171927_2022-chevrolet-corvette-z06-1607016574.jpg',
                    fit: BoxFit.contain,
                  ),
                  footer: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.white,
                    child: const Text('Lamborghini / XP'),
                  ),
                ),
              ),
            );
            // return Card(
            //   color: Colors.white,
            //   elevation: 2,
            //   child: Container(
            //     padding: const EdgeInsets.all(10),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'This is title ${index + 1}',
            //           style: Theme.of(context).textTheme.headline5,
            //         ),
            //         const Text(
            //             "Data tables display information  They organize information in a way that's easy to scan")
            //       ],
            //     ),
            //   ),
            // );
          }),
        ));
  }
}
