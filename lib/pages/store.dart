import 'package:MarketPlus/services/products.service.dart';
import 'package:MarketPlus/widgets/category-card.dart';
import 'package:MarketPlus/widgets/item-card.dart';
import 'package:flutter/material.dart';
import 'package:MarketPlus/services/products.service.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
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
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            CategoryCard(
                                imageUrl: products[index]['imageUrl'],
                                name: products[index]['type'],
                                indexElement: index),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productsRecomend.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            ItemCard(
                              name: productsRecomend[index]['productName'],
                              price: productsRecomend[index]['price'],
                              imageUrl: productsRecomend[index]['imageUrl'],
                              sales: productsRecomend[index]['sale'],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                          ],
                        );
                      }),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: sales.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            ItemCard(
                              name: sales[index]['productName'],
                              price: sales[index]['price'],
                              imageUrl: sales[index]['imageUrl'],
                              sales: sales[index]['sale'],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
