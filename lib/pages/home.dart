import 'package:MarketPlus/pages/account.dart';
import 'package:MarketPlus/pages/shop.dart';
import 'package:MarketPlus/pages/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [Store(),Shop(),Account()];

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
          elevation: 50,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall_outlined,
                color: Colors.black,
                size: 40,
              ),
              title: Text(
                "Tienda",
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
                "Mi carrito",
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
                "Mi cuenta",
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
