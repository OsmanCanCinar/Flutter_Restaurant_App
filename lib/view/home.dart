import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ignotus/core/app_constants.dart';
import 'package:ignotus/view/bill/bill.dart';
import 'package:ignotus/view/menu/menu.dart';
import 'package:ignotus/view_model/providers/home_providers.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends ConsumerState<Home> {
  final List<Icon> navItems = const [
    Icon(Icons.menu_book),
    Icon(Icons.article_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    final int menuIndex = ref.watch(indexProvider) as int;

    return Scaffold(
      //extendBody: true,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: elevation_0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: padding_16),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: menuIndex == 0 ? const MenuPage() : const BillPage(),
      bottomNavigationBar: CurvedNavigationBar(
        items: navItems,
        color: Colors.grey.shade700,
        backgroundColor: Colors.grey.shade900,
        index: menuIndex,
          onTap: (i) {
            setState(() {
              ref.read(indexProvider.notifier).value = i;
            });
          },
      ),
    );
  }
}