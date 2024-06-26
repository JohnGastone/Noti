// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <SplineSeries<SalesData, String>>[
            // ignore: missing_required_param
            SplineSeries<SalesData, String>(
              color: Color.fromARGB(255, 73, 168, 127),
              width: 3,
              dataSource: <SalesData>[
                SalesData(35, 'Mon'),
                SalesData(120, 'Tue'),
                SalesData(85, 'Wed'),
                SalesData(150, 'Thu'),
                SalesData(100, 'Fri'),
                SalesData(200, 'Sat'),
                SalesData(250, 'Sun'),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
            ),
          ],
        ));
  }
}

class SalesData {
  SalesData(this.sales, this.year);
  final String year;
  final int sales;
}
