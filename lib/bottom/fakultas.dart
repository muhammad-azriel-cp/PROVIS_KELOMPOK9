import 'package:flutter/material.dart';
import 'detailFIP.dart';

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
    "Total Total Aula"
  ];

  List<int> angka = [130, 290, 100, 50];

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
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                          subtitle: Text(angka[index].toString(),
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white)),
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
              child: const Text("Daftar Fakultas",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Container(
              margin: const EdgeInsets.only( left: 30, right: 30),
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
                            leading: Icon(Icons.business_rounded, size: 40),
                            title: Text(
                              "Fakultas Ilmu Pendidikan (FIP)",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("12 Program studi",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return DetailFIP();
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
                            leading: Icon(Icons.business_rounded, size: 40),
                            title: Text(
                              "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam (FPMIPA)",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("12 Program Studi",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                            onTap: () {
                              setState(() {
                              });
                            },
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
                            leading: Icon(Icons.business_rounded, size: 40),
                            title: Text(
                              "Fakultas Pendidikan Olahraga dan Kesehatan (FPOK)",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("10 Program Studi",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                                  onTap: () {
                              setState(() {
                              });
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
                            leading: Icon(Icons.business_rounded, size: 40),
                            title: Text(
                              "Fakultas Pendidikan Seni dan Desain (FPSD)",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("12 Program Studi",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                                  onTap: () {
                              setState(() {
                              });
                            },
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
        
      ),
    );
  }
}
