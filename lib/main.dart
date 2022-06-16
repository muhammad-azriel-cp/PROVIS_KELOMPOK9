import 'package:flutter/material.dart';
import 'package:flutter_application_3/bottom/home.dart';
import 'package:flutter_application_3/bottom/bottomNav.dart';

void main() {
  runApp(new MaterialApp(
    home: new Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Login> {
  String _nip = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UPI dalam Data',
        home: Scaffold(
            body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            // background image
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.775KOc9D0-ON9p_VKVgChAHaHc?pid=ImgDet&rs=1"),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/logo.png'),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                Text(
                  "Welcome to",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "UPI DALAM DATA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Text(
                  "Single Sign On UPI",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                Text(
                  "Enter your username and password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),

                // FORM USERNAME
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text('Username :'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 100, left: 100),
                  child: TextFormField(
                    onChanged: (text) {
                      _nip = text;
                    },
                    decoration: new InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "NIP",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                    ),
                  ),
                ),
                //FORM PASSWORD
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text('Password :'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 100, left: 100),
                  child: TextFormField(
                    onChanged: (text) {
                      _password = text;
                    },
                    decoration: new InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BottomNav();
                    }));
                  },
                  child: const Text('Login'),
                ),
              ]),
        )));
  }
}
