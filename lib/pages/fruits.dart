import 'package:MarketPlus/widgets/input.dart';
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
          ],
        ),
      ),
    );
  }
}
