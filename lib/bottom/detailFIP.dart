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
                    child: IconButton(onPressed:()=>Navigator.pop(context), icon: Icon(Icons.arrow_back, color:Colors.white)),
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
              child: const Text("Daftar Program Studi",
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
                              "Bimbingan dan Konseling",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("Akreditasi A",
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
                              "Administrasi Pendidikan",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Akreditasi A",
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
                              "Pendidikan Khusus",
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
                              "Teknologi Pendidikan",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Akreditasi A",
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
