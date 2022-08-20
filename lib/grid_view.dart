import 'package:flutter/material.dart';
import 'package:learning_app/widget_item_shoping.dart';

class MyGridScreen extends StatefulWidget {
  // final List<MyCar> images;
  final List<String> images;
  const MyGridScreen({Key? key, required this.images}) : super(key: key);

  @override
  State<MyGridScreen> createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  List<String> listImages = [];
  @override
  void initState() {
    listImages.addAll(widget.images);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        backgroundColor: const Color(0xff0c111d),
      ),
      backgroundColor: const Color(0xff0c111d),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: List.generate(
          listImages.length,
          (index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff0c111d),
                border: Border.all(
                  width: 2,
                  color: const Color(0xffed5401),
                ),
                boxShadow: const [BoxShadow()],
              ),
              child: WidgetClip(
                image: listImages[index],
                eventTab: () => {
                  // ignore: avoid_print
                  print(index),
                },
                eventDelete: () => {
                  setState(
                    () => {
                      listImages.removeAt(index),
                    },
                  )
                },
              ),
            );
            /* return Card(
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
                         "Data tables display information  They organize information in a way that's easy to scan")
                   ],
                 ),
               ),
             );*/
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(
            () => {
              listImages.add(
                  'https://image.cnbcfm.com/api/v1/image/106330475-1578661660229mbvisionavtr.png?v=1578661970')
            },
          )
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class WidgetClip extends StatelessWidget {
  const WidgetClip({
    Key? key,
    required this.image,
    required this.eventTab,
    required this.eventDelete,
  }) : super(key: key);
  final void Function() eventTab;
  final void Function() eventDelete;
  final String image;
  // final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: MyCardItem(
        name: 'My Car Shopping',
        image: image,
        eventTab: eventTab,
        eventDelete: eventDelete,
      ),
    );
  }
}
