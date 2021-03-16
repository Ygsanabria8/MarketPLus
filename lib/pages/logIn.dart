import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Text(
            "Mi cuenta",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).textScaleFactor * 14,
            ),
          ),
        )
      ],
    ));
  }
}
