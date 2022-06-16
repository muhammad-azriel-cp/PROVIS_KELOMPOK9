import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> datastatistik = [
    "Total Mahasiswa",
    "Total Dosen",
    "Total Fakultas",
    "Total Prodi"
  ];
  //ngambil tanggal hari ini
  String tdata = DateFormat('yMMMMEEEEd').format(DateTime.now());
  List<int> angka = [40000, 300, 12, 120];

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
                //Yang diatas backgroud gambar
               
                      Column(children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 50,left: 30),
                          alignment: Alignment.centerLeft,
                          child: Text(tdata,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          alignment: Alignment.centerLeft,
                          child: const Text("Welcome Back!",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ]),
                  
              
                Container(
                  margin: const EdgeInsets.only(top: 120, left: 30, right: 30),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              /* Clear the search field */
                            },
                          ),
                          hintText: 'Search...',
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ])
            ]),
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
              child: const Text("News Update",
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
                            leading: Image(image: NetworkImage("assets/images/bg.png")),
                            trailing: new Text("26 Mei 2022", style: TextStyle(color: Colors.white),),
                            title: Text(
                              "20 Mahasiswa UPI akan mengikuti perkuliahan di 19 Universitas dan di 11 Negara Berbeda",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70),
                            ),
                            subtitle: Text("Prestasi",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
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
                            leading:Image(image: NetworkImage("assets/images/bg.png")),
                            trailing: new Text("25 Mei 2022", style: TextStyle(color: Colors.black),),
                            title: Text(
                              "Tim Delagasi UPI Melakukan Lawatan Ke Tampere University  University Finland",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54),
                            ),
                            subtitle: Text("Pendidikan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
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
                            leading: Image(image: NetworkImage("assets/images/bg.png")),
                            trailing: new Text("24 Mei 2022", style: TextStyle(color: Colors.white),),
                            title: Text(
                              "Klaster Pendidikan Vokasi UPI Sambut Akreditasi Internasional",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70),
                            ),
                            subtitle: Text("Lainnya",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
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
                            leading: Image(image: NetworkImage("assets/images/bg.png")),
                            trailing: new Text("17 Mei 2022", style: TextStyle(color: Colors.black),),
                            title: Text(
                              "UPI Gelar Acara Silaturahim Idulfitri 1443 Hijriah",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54),
                            ),
                            subtitle: Text("Kegiatan Kampus",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
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
