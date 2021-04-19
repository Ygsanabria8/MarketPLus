import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap = 1;
  final List<Widget> widgetsChildren = [];

  void onTapTapped(int index) {
    setState(() {
      //controlar estado widget
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      body: Container(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          elevation: 10,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Mi cuenta",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall_outlined,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Ayuda",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.miscellaneous_services_outlined,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Ayuda",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
