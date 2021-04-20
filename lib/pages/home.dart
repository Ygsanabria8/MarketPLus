import 'package:MarketPlus/pages/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [Store(),];

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
      body: widgetsChildren[indexTap],
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
                Icons.local_mall_outlined,
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
                Icons.add_shopping_cart_outlined,
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
                Icons.account_circle_outlined,
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
