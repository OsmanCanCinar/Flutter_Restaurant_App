import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalAmountNotifier extends StateNotifier<double> {
  TotalAmountNotifier() : super(0);

  set value(double index) => state = index;
}

final totalAmountProvider = StateNotifierProvider((ref) => TotalAmountNotifier());