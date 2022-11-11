import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ignotus/provider/providers.dart';

class BillPage extends ConsumerWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var read = ref.read(controller);
    var watch = ref.watch(controller);

    return Container(
      child: Column(
        children: [
          const Text(
            "Users",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(watch.users[index]!.avatar!),
                    radius: 20,
                  ),
                  title: Text(
                    "${watch.users[index]?.firstName ?? ""}  ${watch.users[index]?.lastName ?? ""}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    watch.users[index]?.email ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 15);
            },
            itemCount: watch.users.length,
          ),
        ],
      ),
    );
  }
}
