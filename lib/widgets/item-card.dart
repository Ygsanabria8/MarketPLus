import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemCard extends StatelessWidget {

  String name;
  String imageUrl;

  ItemCard({Key key, this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(        
        width: MediaQuery.of(context).size.width * 0.435,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.red,
              ),
            ),
            Image(
              image: AssetImage(imageUrl),
              width: 70,
            ),
            Text(
              "1900 - lb",
              style: TextStyle(
                color: Colors.green[700],
                fontSize: MediaQuery.of(context).textScaleFactor * 28,
                letterSpacing: 1.7,
                fontWeight: FontWeight.w600
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).textScaleFactor * 26,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.05,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                color: Colors.blue[300],
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Text(
                      "Agregar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).textScaleFactor * 20,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Icon(
                      Icons.local_grocery_store_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
                onPressed: () => {print("hola")}
              ),
            ),
          ],
        ),
      );
  }
}
