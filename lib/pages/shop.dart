import 'package:MarketPlus/widgets/button-blue.dart';
import 'package:MarketPlus/widgets/shop-card.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
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
        child: WillPopScope(
          onWillPop: () => null,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Mi carrito",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 38,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ShopCard(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        ShopCard(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        ShopCard(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        ShopCard(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        ShopCard(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        ShopCard(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ButtonBlue(
                  name: "REALIZAR PAGO",
                  onPressed: () => {
                    print("Realizando compra"),
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
