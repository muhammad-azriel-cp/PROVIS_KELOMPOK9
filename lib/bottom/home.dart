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
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(children: <Widget>[
                //Yang diatas backgroud gambar
                Row(children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(
                        left: 20, top: 50, right: 20, bottom: 0),
                    child: const Text("Jum'at , 01 April 2022",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top:50, right:50),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                ]),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text("Welcome Back!",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 150, left: 30, right: 30),
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
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: (1 / .4),
                shrinkWrap: true,
                children: List.generate(angka.length, (index) {
                  return Card(
                    margin: const EdgeInsets.only(top: 16),
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            " Judul Berita",
                            style:
                                TextStyle(fontSize: 24, color: Colors.black87),
                          ),
                          subtitle: Text("Deskripsi",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black26)),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/bg.png"),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ]),
        ),
        
      ),
    );
  }
}
