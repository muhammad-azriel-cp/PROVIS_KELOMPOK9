import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailFIP.dart';
import 'universitas.dart';
import 'home.dart';
import 'dosen.dart';
import 'fakultasApp.dart';
import 'mahasiswa.dart';

class BottomNav extends StatefulWidget {

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final List<Widget> body =[
    Home(),
    Dosen(),
    FakultasApp(),
    Mhs(),
    Universitas(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined, size: 32),
              label: 'Dosen',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_rounded, size: 32),
              label: 'Fakultas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outlined, size: 32),
              label: 'Mahasiswa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_sharp, size: 32),
              label: 'Universitas',
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          //onTap: _changeSelectedNavBar,
        ),
      );
  }
  void ontap(int index){
    setState(() {
      currentIndex = index;
    });
  }
}
