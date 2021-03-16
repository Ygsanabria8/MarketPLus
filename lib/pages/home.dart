import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child:Text(
              "Hola",
            ),
          ),
        ],
      ),
    );
  }
}