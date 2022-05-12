import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'kerjasamaProdi.dart';
import 'kerjasamaUniv.dart';

class Universitas extends StatefulWidget {
  @override
  _UniversitasState createState() => _UniversitasState();
}

class _UniversitasState extends State<Universitas> {
  List<String> datastatistik = [
    "Jumlah Fakultas",
    "Jumlah Gedung Fakultas",
    "Jumlah Gedung Administrasi Akademik",
    
  ];
  List<int> angka = [15, 20, 18];
  // This widget is the root of your application.
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
                                  "INFORMASI UNIVERSITAS",
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
                  margin: const EdgeInsets.only(left: 30, top: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Statistik",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
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
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              //leading: Icon(Icons.album, size: 45),
                              title: Text(
                                datastatistik[index],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white70),
                              ),
                              subtitle: Text(angka[index].toString(),
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white)),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Kontrak Kerjasama",
                      style: TextStyle(
                          fontSize: 18,
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
                      Card(
                        color: Colors.blueAccent,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Container(
                              child: ListTile(
                                leading: Icon(Icons.account_balance_sharp, size: 45),
                                // trailing: new Text(
                                //   "30 Penelitian",
                                //   style: TextStyle(color: Colors.white),
                                // ),
                                title: Text(
                                  "Universitas",
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white70),
                                ),
                                // subtitle: Text("Ilmu Komputer",
                                //     style: TextStyle(
                                //         fontSize: 16, color: Colors.white)),
                              onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return KerjasamaUniv();
                              }));
                            },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.teal[50],
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Container(
                              child: ListTile(
                                leading: Icon(Icons.business_rounded, size: 45),
                                // trailing: new Text(
                                //   "27 Penelitian",
                                //   style: TextStyle(color: Colors.white),
                                // ),
                                title: Text(
                                  "Fakultas",
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.black54),
                                ),
                                // subtitle: Text("Ilmu Komputer",
                                //     style: TextStyle(
                                //         fontSize: 16, color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.blueAccent,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Container(
                              child: ListTile(
                                leading: Icon(Icons.business_rounded, size: 45),
                                // trailing: new Text(
                                //   "26 Penelitian",
                                //   style: TextStyle(color: Colors.white),
                                // ),
                                title: Text(
                                  "Program Studi",
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white70),
                                ),
                                // subtitle: Text("Ilmu Komputer",
                                //     style: TextStyle(
                                //         fontSize: 16, color: Colors.white)),
                              onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return KerjasamaProdi();
                              }));
                              }
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
