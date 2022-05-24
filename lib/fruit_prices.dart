import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class FruitPrices {
  final String fruit;
  final int price;
  final charts.Color barColor;

  FruitPrices(
      {required this.fruit, required this.price, required this.barColor});
}
