import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ignotus/common/app_constants.dart';
import 'package:ignotus/controller/menu_controllers/menu_providers.dart';

class CategoryItem extends ConsumerStatefulWidget {
  final String itemCategory;
  final int index;

  const CategoryItem({
    required this.itemCategory,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  CategoryItemState createState() => CategoryItemState();
}

class CategoryItemState extends ConsumerState<CategoryItem> {
  late Map<String, bool> categoryStatus;

  @override
  void initState() {
    super.initState();
    categoryStatus = ref.read(categoryStateProvider.notifier).state;
  }

  @override
  Widget build(BuildContext context) {
    categoryStatus = ref.watch(categoryStateProvider.notifier).state;

    return GestureDetector(
      onTap: () {
        setState(() {
          categoryStatus = ref
              .read(categoryStateProvider.notifier)
              .setMap(widget.itemCategory);
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: padding_12),
        child: Text(
          widget.itemCategory,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: setColor()),
        ),
      ),
    );
  }

  Color? setColor() {
    Map<String, bool> status = categoryStatus;

    setState(() {
      categoryStatus = ref.read(categoryStateProvider.notifier).state;
      status = categoryStatus;
    });

    if (status[widget.itemCategory] == false) {
      return Colors.grey;
    } else {
      return Colors.orange;
    }
  }
}
