import 'package:charts/fruit_prices.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class FruitPriceChart extends StatelessWidget {
  final List<FruitPrices> data;

  FruitPriceChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<FruitPrices, String>> series = [
      charts.Series(
          id: "Price",
          data: data,
          domainFn: (FruitPrices series, _) => series.fruit,
          measureFn: (FruitPrices series, _) => series.price,
          colorFn: (FruitPrices series, _) => series.barColor)
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Fruit price from Jan to March (2022) ",
              ),
              Expanded(
                // //PieChart
                // child: (charts.PieChart(
                //   series,
                //   animate: true,
                // )),

                // //Bar Chart
                child: (charts.BarChart(series, animate: true)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
