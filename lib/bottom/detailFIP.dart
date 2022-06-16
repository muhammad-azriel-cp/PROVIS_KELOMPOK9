import 'package:flutter/material.dart';

class DetailFIP extends StatefulWidget {
  const DetailFIP({Key? key}) : super(key: key);

  @override
  State<DetailFIP> createState() => _DetailFIPState();
}

class _DetailFIPState extends State<DetailFIP> {
  List<String> datastatistik = [
    "Jumlah Program Studi",
    "Jumlah Ruang Kelas",
    "Jumlah Laboratorium",
    "Jumlah Total Aula"
  ];

  List<int> angka = [10, 50, 15, 4];

  Card componentCard(
      String programStudi, String akreditasi, bool booleanWarna) {
    return Card(
      color: (booleanWarna) ? Colors.blueAccent : Colors.teal[50],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(Icons.school_outlined, size: 40),
              title: Text(
                programStudi,
                style: TextStyle(
                    fontSize: 16,
                    color: (booleanWarna) ? Colors.white : Colors.black),
              ),
              subtitle: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text("Akreditasi " + akreditasi,
                    style: TextStyle(
                        fontSize: 14,
                        color: (booleanWarna) ? Colors.white : Colors.black)),
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
        //     appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back),
        // onPressed:() => Navigator.pop(context, false),)),
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
                Row(children: <Widget>[
                  Container(
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back, color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 100, right: 20, left: 20, bottom: 0),
                    child: const Text("FAKULTAS ILMU PENDIDIKAN",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ]),
              ])
            ]),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Data Fakultas Ilmu Pendidikan",
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
              child: const Text("Daftar Program Studi",
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
                  componentCard("Bimbingan dan Konseling", "A", true),
                  componentCard("Administrasi Pendidikan", "A", false),
                  componentCard("Pendidikan Khusus", "B", true),
                  componentCard("Teknologi Pendidikan", "A", false),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
