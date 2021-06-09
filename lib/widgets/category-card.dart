import 'package:MarketPlus/pages/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoryCard extends StatelessWidget {

  String name;
  String imageUrl;
  int indexElement;

  CategoryCard({Key key, this.name, this.imageUrl, this.indexElement});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,MaterialPageRoute(
              builder: (context) => CategoryPage(indexElement: indexElement)
        ),
      ),
      child: Container(        
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).textScaleFactor * 22,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Image(
              image: AssetImage(imageUrl),
              width: 70,
            )
          ],
        ),
      ),
    );
  }
}
