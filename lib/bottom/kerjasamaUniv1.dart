import 'package:flutter/material.dart';

class KerjasamaUniv1 extends StatefulWidget {
  const KerjasamaUniv1({Key? key}) : super(key: key);

  @override
  State<KerjasamaUniv1> createState() => _KerjasamaUniv1State();
}

class _KerjasamaUniv1State extends State<KerjasamaUniv1> {

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
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(onPressed:()=>Navigator.pop(context), 
                  icon: Icon(Icons.arrow_back, color:Colors.white)),
                  ),
                    Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "KONTRAK KERJASAMA UNIVERSITAS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ]))
                  ])
            ]),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20),
              alignment: Alignment.center,
              child: const Text("Isola Park",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
          ]),
        ),
        
      ),
    );
  }
}
