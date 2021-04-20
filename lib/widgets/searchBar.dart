import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
        IconButton(
          icon: Icon(
            Icons.search_outlined,
          ),
          onPressed: () => (print("Doy atras")),
        ),
        Text(
          "Buscar",
          style: TextStyle(
            fontSize: MediaQuery.of(context).textScaleFactor * 24
          ),
        ),
      ],
    );
  }
}