import 'package:flutter/material.dart';
import 'package:ignotus/view/menu/components/item_tile.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ItemTile(index: 0),
          ItemTile(index: 1),
          ItemTile(index: 2),
          ItemTile(index: 3),
          ItemTile(index: 4),
        ],
      ),
    );
  }
}