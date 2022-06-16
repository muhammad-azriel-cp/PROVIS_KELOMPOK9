import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  List<int> angka = [40000, 300, 12, 120];

  Card componentCard(
      String judul, String tanggal, String kategori, bool booleanWarna) {
    return Card(
      color: (booleanWarna) ? Colors.blueAccent : Colors.teal[50],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Image(image: NetworkImage("assets/images/bg.png")),
              trailing: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(tanggal,
                    style: TextStyle(
                        fontSize: 14,
                        color: (booleanWarna) ? Colors.white : Colors.black)),
              ),
              title: Text(
                judul,
                style: TextStyle(
                    fontSize: 16,
                    color: (booleanWarna) ? Colors.white : Colors.black),
              ),
              subtitle: Text(
                kategori,
                style: TextStyle(
                    fontSize: 16,
                    color: (booleanWarna) ? Colors.white : Colors.black),
              ),
            ),
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
                //Yang diatas backgroud gambar
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 50, left: 20),
                          alignment: Alignment.centerLeft,
                          child: const Text("Jum'at , 01 April 2022",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: const Text("Welcome Back!",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ]),
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
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
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
              child: const Text("News Update",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            // data dosen terbaik
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: (1 / .2),
                shrinkWrap: true,
                children: [
                  componentCard(
                      "20 Mahasiswa UPI akan mengikuti perkuliahan di 19 Universitas dan di 11 Negara Berbeda",
                      "26 Mei 2022",
                      "Prestasi",
                      true),
                  componentCard(
                      "Tim Delagasi UPI Melakukan Lawatan Ke Tampere University Finland",
                      "25 Mei 2022",
                      "Pendidikan",
                      false),
                  componentCard(
                      "Klaster Pendidikan Vokasi UPI Sambut Akreditasi Internasional",
                      "24 Mei 2022",
                      "Lainnya",
                      true),
                  componentCard(
                      "UPI Gelar Acara Silaturahim Idulfitri 1443 Hijriah",
                      "17 Mei 2022",
                      "Kegiatan Kampus",
                      false),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
