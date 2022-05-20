import 'package:flutter/material.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({ Key? key }) : super(key: key);

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
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
                    margin: const EdgeInsets.only(top:50),
                    child: IconButton(onPressed:()=>Navigator.pop(context), icon: Icon(Icons.arrow_back, color:Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 50, right: 20, left: 20, bottom: 0),
                    child: const Text("Notifikasi",
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
              child: const Text("List Notifikasi",
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
                            leading:  CircleAvatar(
                            backgroundImage: AssetImage("assets/images/bg.png")),
                            title: Text(
                              "Notifkasi 1",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("Fakultas FPMIPA",
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
                            leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/bg.png")),
                            title: Text(
                              "Notifikasi 2",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Fakultas FPOK",
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
                            leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/bg.png")),
                            title: Text(
                              "Notifikasi 3",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("Fakultas FPEB",
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
                            leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/bg.png")),
                            title: Text(
                              "Notifikasi 4",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Fakultas FPTK",
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