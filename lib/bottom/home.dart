import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> datastatistik = [
    "Total Mahasiswa",
    "Total Dosen",
    "Total Fakultas",
    "Total Prodi"
  ];
  List<int> angka = [40000, 300, 12, 120];
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
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
              Container(
                    child: Text(
                      "Welcome Back !",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        ),
                      ),
              ),
              Container(
                  child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20.0,
                    ),
              ),
              ]),
              
              // 
            ),
            Container(

              child:Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(
                        left: 20, top: 50, right: 20, bottom: 0),
                    child: const Text("Jum'at , 01 April 2022",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                   
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
                childAspectRatio: (1 / .4),
                shrinkWrap: true,
                children: List.generate(angka.length, (index) {
                  return Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        ListTile(
                          //leading: Icon(Icons.album, size: 45),
                          title: Text(
                            "Ini Judul Berita",
                            style:
                                const TextStyle(fontSize: 24, color: Colors.white70),
                          ),
                          subtitle: Text("Ini deskripsinya",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
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

