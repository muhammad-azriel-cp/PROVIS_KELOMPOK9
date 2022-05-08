import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dosen extends StatefulWidget {

  @override
  _DosenState createState() => _DosenState();
}

class _DosenState extends State<Dosen> {

  List<String> datastatistik = [
    "Total Dosen",
    "Total Penelitian Dosen",
    "Total Dosen S2",
    "Total Dosen S3"
  ];
  List<int> angka = [400, 300, 280, 120];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
          children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("assets/images/img-home.png"),
                fit: BoxFit.fitWidth,
              )
            ),
            child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
              Container(
                child: Text(
                      "INFORMASI DOSEN",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        ),
                      ),
              ),
              ]), 
            ),
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
              child: const Text("Dosen Terbaik",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Container(
              margin: const EdgeInsets.only( left: 30, right: 30),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: (1 / .4),
                shrinkWrap: true,
                children: List.generate(angka.length, (index) {
                  return Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Container(
                          child: Icon(
                          Icons.school_outlined,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        ),
                        Container(
                          child: ListTile(
                          //leading: Icon(Icons.album, size: 45),
                          title: Text(
                            "Nama Dosen",
                            style:
                                const TextStyle(fontSize: 24, color: Colors.white70),
                          ),
                          subtitle: Text("Ilmu Komputer",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
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
          ]),
        ),
      ),
    );
  }
}

