import 'package:flutter/material.dart';
import 'package:flutter_application_3/bottom/detailFIP.dart';

class Fakultas extends StatefulWidget {
  const Fakultas({Key? key}) : super(key: key);
  @override
  State<Fakultas> createState() => _FakultasState();
}

class _FakultasState extends State<Fakultas> {
  List<String> datastatistik = [
    "Total Program Studi",
    "Total Ruang Kelas",
    "Total Laboratorium",
    "Total Aula"
  ];
  List<int> angka = [130, 290, 130, 290];

  Card componentCard(
      String namaFakultas, String jumlahProdi, bool booleanWarna) {
    return Card(
      color: (booleanWarna) ? Colors.blueAccent : Colors.teal[50],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            child: ListTile(
                leading: Icon(Icons.business_rounded, size: 40),
                title: Text(
                  namaFakultas,
                  style: TextStyle(
                      fontSize: 16,
                      color: (booleanWarna) ? Colors.white : Colors.black),
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(jumlahProdi + " Program Studi",
                      style: TextStyle(
                          fontSize: 14,
                          color: (booleanWarna) ? Colors.white : Colors.black)),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailFIP();
                  }));
                }),
          ),
        ],
      ),
    );
  }

  
  final int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
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
                              "INFORMASI FAKULTAS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
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
                  const Text("Data Fakultas",
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              margin: const EdgeInsets.only(left: 35, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              child: const Text("Daftar Fakultas",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: (1 / .2),
                shrinkWrap: true,
                children: [
                  componentCard("Fakultas Ilmu Pendidikan (FIP)", "9", true),
                  componentCard(
                      "Fakultas Pendidikan Matematika Ilmu Pengetahuan Alam (FPMIPA)",
                      "11",
                      false),
                  componentCard(
                      "Fakultas Pendidikan Olahraga dan Kesehatan (FPOK})",
                      "3",
                      true),
                  componentCard("Fakultas Pendidikan Ilmu Pengetahuan Sosial",
                      "10", false),
                  componentCard(
                      "Fakultas Pendidikan Bahasa dan Sastra", "10", true),
                  componentCard(
                      "Fakultas Pendidikan Seni dan Desain", "3", false),
                  componentCard(
                      "Fakultas Pendidikan Teknologi dan Kejuruan", "8", true),
                  componentCard(
                      "Fakultas Pendidikan Ekonomi dan Bisnis", "7", false),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
