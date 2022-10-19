import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ignotus/core/app_constants.dart';
import 'package:ignotus/view/menu/components/header.dart';
import 'package:ignotus/view/menu/components/category_list.dart';
import 'package:ignotus/view/menu/components/item_list.dart';
import 'package:ignotus/view/menu/components/search_bar.dart';

class MenuPage extends ConsumerStatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  MenuPageState createState() => MenuPageState();
}

class MenuPageState extends ConsumerState<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Header(),
        SizedBox(height: padding_25),
        SearchBar(),
        SizedBox(height: padding_25),
        ItemCategories(),
        ItemList(),
      ],
    );
  }
}
