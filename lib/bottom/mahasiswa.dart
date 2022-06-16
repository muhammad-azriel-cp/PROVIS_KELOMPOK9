import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/bottom/mhs_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'mhs_series.dart';

class Mhs extends StatefulWidget {
  @override
  _MhsState createState() => _MhsState();
}

class _MhsState extends State<Mhs> {
  List<String> datastatistik = [
    "Jumlah Mahasiswa",
    "Mahasiswa Aktif",
    "Cuti",
    "Dropout",
  ];
  List<int> angka = [23000, 215351, 295, 20];
  // This widget is the root of your application.

  final List<mhsSeries> data = [
    mhsSeries(
        year: "2019",
        ipk: 3.4,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    mhsSeries(
        year: "2020",
        ipk: 3.1,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    mhsSeries(
        year: "2021",
        ipk: 3.6,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    mhsSeries(
        year: "2022",
        ipk: 4.0,
        barColor: charts.ColorUtil.fromDartColor(Colors.red)),
  ];

  static get year => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Column(children: <Widget>[
                Stack(children: <Widget>[
                  //BG(Layer 1)
                  Container(
                    margin: const EdgeInsets.only(top: 0),
                    height: 300,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/img-dashboard.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "INFORMASI MAHASISWA",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ]))
                  ])
                ]),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Data Mahasiswa",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: (1 / .4),
                    shrinkWrap: true,
                    children: List.generate(angka.length, (index) {
                      return Card(
                        color: Colors.blueAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    datastatistik[index],
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  Text(angka[index].toString(),
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.white)),
                                ])
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Charts",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  child: mhsChart(
                    data: data,
                  ),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
