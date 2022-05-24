import 'package:charts/fruit_price_chart.dart';
import 'package:charts/fruit_prices.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FruitPrices> data = [
      FruitPrices(
        fruit: "Mango",
        price: 120,
        barColor: charts.ColorUtil.fromDartColor(Colors.red),
      ),
      FruitPrices(
        fruit: "Grapes",
        price: 40,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
      ),
      FruitPrices(
        fruit: "Chickoo",
        price: 50,
        barColor: charts.ColorUtil.fromDartColor(Colors.green),
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Fruit price from Jan to March (2022) "),
        ),
        body: Column(
          children: [
            FruitPriceChart(
              data: data,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Center(
                        child: Text(
                          data[index].fruit,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: Colors.red[300],
                    );
                  }),
            )
          ],
        ));
  }
}
