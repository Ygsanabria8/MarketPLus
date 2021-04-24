import 'package:MarketPlus/widgets/category-card.dart';
import 'package:MarketPlus/widgets/item-card.dart';
import 'package:MarketPlus/widgets/searchBar.dart';
import 'package:flutter/material.dart';


class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined
          ),
          onPressed: () => (print("Doy atras")),
        ),
      ),
      body: WillPopScope(
        onWillPop: () => null,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SearchBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Categorias",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(
                        name: "Frutas",
                        imageUrl: "assets/img/watermelon.png",
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      CategoryCard(
                        name: "Verduras",
                        imageUrl: "assets/img/vegeatables.png",
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      CategoryCard(
                        name: "Aseo",
                        imageUrl: "assets/img/cleaning.png",
                      ),
                    ],
                  )
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Row(
                    children: [
                      ItemCard(
                        name: "Maracuya",
                        imageUrl: "assets/img/cleaning.png",
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      ItemCard(
                        name: "Maracuya",
                        imageUrl: "assets/img/cleaning.png",
                      ),  
                    ],
                  )
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Promociones",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Image(
                  image: AssetImage('assets/img/tomatos.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
