import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InputText extends StatelessWidget {
  String label;
  TextEditingController controller;

  InputText({Key key, this.controller, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
