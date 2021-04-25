import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShopCard extends StatelessWidget {
  ShopCard({Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/img/watermelon.png'),
                  width: 50,
                ),
                Text(
                  "Tomates",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).textScaleFactor * 14,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              "x2 1.900 c/u",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.green[700],
                  fontSize: MediaQuery.of(context).textScaleFactor * 18,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.32,
            ),
            Icon(
              Icons.cancel_outlined,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
