import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Campo extends StatelessWidget{

  String label;
  TextEditingController controller;

  Campo(TextEditingController emailController, {Key key, this.controller, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),
    ),
    );
  }
}