import 'package:flutter/material.dart';

class MyCardItem extends StatelessWidget {
  final String image;
  final String name;
  final void Function() eventTab;
  final void Function() eventDelete;
  const MyCardItem({
    Key? key,
    required this.image,
    required this.name,
    required this.eventTab,
    required this.eventDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: eventTab,
      onLongPress: eventDelete,
      child: GridTile(
        footer: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Text(name),
        ),
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
