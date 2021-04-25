import 'package:MarketPlus/widgets/searchBar.dart';
import 'package:flutter/material.dart';

class Fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/img/Bananos.jpg'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
