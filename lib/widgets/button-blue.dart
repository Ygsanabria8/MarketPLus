import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonBlue extends StatelessWidget {

  String name;
  Function onPressed;
  TextEditingController controller;

  ButtonBlue({Key key, this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.08,
      child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      disabledColor: Colors.amber,
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.of(context).textScaleFactor * 18,
        ),
      ),
      color: Colors.blue[700],
      onPressed: onPressed
      ),
    );
  }
}