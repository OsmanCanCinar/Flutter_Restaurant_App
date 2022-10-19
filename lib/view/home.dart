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
  final List<BottomNavigationBarItem> navItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: menuTitle),
    BottomNavigationBarItem(
        icon: Icon(Icons.article_outlined), label: billTitle),
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
      floatingActionButton: FloatingActionButton(
        elevation: elevation_5,
        onPressed: () {
          //direct to Pay the bill Page
        },
        tooltip: homeFabTip,
        child: const Icon(Icons.handshake),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: menuIndex == 0 ? const MenuPage() : const BillPage(),
      bottomNavigationBar: BottomNavigationBar(
          items: navItems,
          currentIndex: menuIndex,
          onTap: (i) {
            setState(() {
              ref.read(indexProvider.notifier).value = i;
            });
          }),
    );
  }
}
