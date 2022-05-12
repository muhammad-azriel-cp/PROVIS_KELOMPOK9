import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/bottom/mhs_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class mhsChart extends StatelessWidget{
  final List<mhsSeries> data;

  mhsChart({required this.data});
   
  @override
  Widget build(BuildContext context){
    List<charts.Series<mhsSeries, String>> series
    = [
      charts.Series(
        id: "IPK",
        data: data,
        domainFn: (mhsSeries series, _) => series.year,
        measureFn: (mhsSeries series, _) => series.ipk,
        colorFn: (mhsSeries series, _) => series.barColor
      )
    ];

    return Container(
      height: 400,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children:<Widget> [
            Text("TREN IPK UPI"),
            Expanded(child: charts.BarChart(series, animate: true))
          ],)
          ),
      ),
    );
  }
}