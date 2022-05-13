import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
  return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _nama = "";
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'INFORMASI FAKULTAS',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('INFORMASI FAKULTAS'),
      ),
      body: Center(
          child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                      
                      children:[
                        Stack(
                          children:[
                            Image(
                              image: AssetImage('assets/images/Background.png'),
                              alignment: Alignment.center,
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 300/6),
                                ),
                                Center(
                                  child: Text("INFORMASI FAKULTAS",style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white)),
                                ),
                              ],
                            ),
                          ], 
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Text("SEMUA FAKULTAS",style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                            Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[600],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text('Total Program Studi',
                                    style: TextStyle(
                                      fontSize:15,
                                      color: Colors.white)),
                                  Text('130',
                                    style: TextStyle(
                                      fontSize:20,
                                      color: Colors.white)),
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[600],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text('Total Program Studi',
                                    style: TextStyle(
                                      fontSize:15,
                                      color: Colors.white)),
                                  Text('130',
                                    style: TextStyle(
                                      fontSize:20,
                                      color: Colors.white)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top:10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                            Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[600],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text('Total Program Studi',
                                    style: TextStyle(
                                      fontSize:15,
                                      color: Colors.white)),
                                  Text('290',
                                    style: TextStyle(
                                      fontSize:20,
                                      color: Colors.white)),
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue[600],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                children:[
                                  Text('Total Program Studi',
                                    style: TextStyle(
                                      fontSize:15,
                                      color: Colors.white)),
                                  Text('290',
                                    style: TextStyle(
                                      fontSize:20,
                                      color: Colors.white)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment : MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:50, left:30),
                        ),
                        Text("SEMUA FAKULTAS",style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey[900])
                        ),
                      ],
                    ),

                    Container(
                      padding : EdgeInsets.only(left: 30, right: 30),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue[600],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Text('Logo'),
                                    Column(
                                      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                                      children:[
                                        Text('Fakultas Ilmu Pendidikan (FIP)',
                                          style: TextStyle(
                                            fontSize:15,
                                            color: Colors.white)),
                                        Text('12 prodi',
                                          style: TextStyle(
                                            fontSize:15,
                                            color: Colors.white)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                        ],
                      ),
                    ),
               ],
             )), //column center
           ), //Scaffold
  ); //Material APP
  } 
}
