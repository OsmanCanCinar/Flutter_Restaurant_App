import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ignotus/common/app_constants.dart';
import 'package:ignotus/view/menu/components/category_item.dart';

class ItemCategories extends ConsumerStatefulWidget {
  const ItemCategories({
    Key? key,
  }) : super(key: key);

  @override
  ItemCategoriesState createState() => ItemCategoriesState();
}

class ItemCategoriesState extends ConsumerState<ItemCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: padding_25),
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            itemCategory: categoryList[index],
            index: index,
          );
        },
      ),
    );
  }
}
