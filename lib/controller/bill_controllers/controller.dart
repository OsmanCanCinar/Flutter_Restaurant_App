import 'package:flutter/material.dart';
import 'package:ignotus/model/model.dart';
import 'package:ignotus/service/service.dart';

class Controller extends ChangeNotifier {
  bool? isLoading;
  List<ModelData?> users = [];

  void getData() {
    Service.fetch().then((value) {
      if (value != null) {
        users = value.data!;
        isLoading = true;
      } else {
        isLoading = false;
      }
    });
  }
}
