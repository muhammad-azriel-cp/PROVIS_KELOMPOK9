import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  String _search = "";
  int _selectedIndex = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
	return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(50.0), 
      child: AppBar(
        // flexibleSpace: Image(
        //   image: AssetImage("assets/images/img-dashboard.png"),
        //   fit: BoxFit.fitWidth,
        // ),
        backgroundColor: Colors.transparent,
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("assets/images/img-dashboard.png"),
                fit: BoxFit.fitWidth,
              )
            ),
            child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(100, 100, 100, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
              Container(
                    child: Text(
                      "Welcome Back !",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        ),
                      ),
              ),
              Container(
                  child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30.0,
                    ),
              ),
              ]),
              // 
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(100, 400, 100, 50),
              child: TextFormField(
                onChanged: (text) {
                   _search = text;
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Cari data...",
                  border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 150,
                width: 400,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Total Mahasiswa 121200', 
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 40),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 150,
                width: 400,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Total Program Studi 1200', 
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 40),
                ),  
              ),
              ]),
            ),
            Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 150,
                width: 400,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Total Fakultas 23121', 
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 40),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                height: 150,
                width: 400,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Total Mahasiswa 12543', 
                   textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 40),
                ),  
              ),
              ]),
            ),
            Padding(padding: EdgeInsets.only(top:30.0),),
            Text(
              "News Update",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                ),
            ),
         ],
        ),
        // child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.grey,),
            label: 'Dosen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.grey,),
            label: 'Fakultas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, color: Colors.grey,),
            label: 'Mahasiswa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.synagogue, color: Colors.grey,),
            label: 'Universitas',
          ),
        ],
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
      ),

	);
  }
}
