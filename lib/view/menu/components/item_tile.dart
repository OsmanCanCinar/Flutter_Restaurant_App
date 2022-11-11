import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ignotus/common/app_constants.dart';

class ItemTile extends StatelessWidget {
  final int index;

  const ItemTile({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: padding_25, bottom: padding_25),
      child: Container(
        padding: const EdgeInsets.all(padding_12),
        width: itemTileWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(padding_12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius_12),
              child: CachedNetworkImage(
                placeholder: (context, url) => const CircularProgressIndicator(),
                imageUrl: menuImageList[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: padding_12),
              child: Text(
                menuTitleList[index],
                style: const TextStyle(fontSize: fontSize_20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: padding_6),
              child: Text(
                menuDescriptionList[index],
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: padding_6, horizontal: padding_3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(menuPriceList[index]),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius_12))),
                    onPressed: null,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
