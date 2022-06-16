import 'package:flutter/material.dart';

class Dosen extends StatefulWidget {
  const Dosen({Key? key}) : super(key: key);

  @override
  State<Dosen> createState() => _DosenState();
}

class _DosenState extends State<Dosen> {
  List<String> datastatistik = [
    "Total Dosen",
    "Total Penelitian Dosen",
    "Total Dosen S2",
    "Total Dosen S3"
  ];
  List<int> angka = [500, 2310, 300, 200];

// method untuk menampilkan data dosen terbaik
  Card componentCard(String namaDosen, String jumlahPenelitian,
      String programStudi, bool booleanWarna) {
    return Card(
      color: (booleanWarna) ? Colors.blueAccent : Colors.teal[50],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(Icons.school_outlined, size: 40),
              trailing: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(jumlahPenelitian + " Penelitian",
                    style: TextStyle(
                        fontSize: 14,
                        color: (booleanWarna) ? Colors.white : Colors.black)),
              ),
              title: Text(
                namaDosen,
                style: TextStyle(
                    fontSize: 16,
                    color: (booleanWarna) ? Colors.white : Colors.black),
              ),
              subtitle: Text(
                programStudi,
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
              //poster
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
                              "INFORMASI DOSEN",
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
            // container yang berisi data jumlah dosen dan penelitiannya
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Data Dosen",
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
              child: const Text("Dosen Terbaik",
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
                      "Prof. Dr. Munir, M. IT.", "30", "Ilmu Komputer", true),
                  componentCard(
                      "Dr. Yudi Wibisono, M.T.", "27", "Ilmu Komputer", false),
                  componentCard("Dr. Muhammad Nursalman, M.T.", "26",
                      "Ilmu Komputer", true),
                  componentCard("Dr. Lala Septem Riza, M.T.", "22",
                      "Ilmu Komputer", false),
                  componentCard("Dra. Cucu Ruhidawati, M.Si", "21",
                      "Pendidikan Tata Boga", true),
                  componentCard("Prof. Emi Emilia, M.Ed., Ph.D.", "18",
                      "Pendidikan Bahasa Inggris", false),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
