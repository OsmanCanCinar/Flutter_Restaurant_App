import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryIndex extends StateNotifier<int> {
  CategoryIndex() : super(0) {
    _index = state;
  }

  late int _index;

  void setIndex(int index) {
    _index = index;
    state = _index;
    print(state);
  }
}

final categoryIndexProvider = StateNotifierProvider((ref) => CategoryIndex());

class CategoryState extends StateNotifier<Map<String, bool>> {
  CategoryState()
      : super({"Pizza": true, "Beverages": false, "Desserts": false}) {
    _map = state;
  }

  late final Map<String, bool> _map;

  Map<String, bool> setMap(String key) {
    _map.forEach((k, v) {
      _map[k] = false;
    });
    _map[key] = true;
    state = _map;
    return state;

    //state.forEach((k, value) {print("key: $k, value: $value");});
  }
}

final categoryStateProvider = StateNotifierProvider((ref) => CategoryState());

class CategoryState2 extends StateNotifier<List<bool>> {
  CategoryState2() : super([true, false, false]) {
    _list = state;
  }

  late final List<bool> _list;

  void setList(int index) {
    for (int i = 0; i < _list.length; i++) {
      _list[i] = false;
    }

    _list[index] = true;
    state = _list;

    state.forEach((element) {print(element);});
  }
}

final categoryStateProvider2 = StateNotifierProvider((ref) => CategoryState2());
