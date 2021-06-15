import 'package:MarketPlus/services/user.service.dart';
import 'package:MarketPlus/widgets/ItemCardShop.dart';
import 'package:MarketPlus/widgets/ModalShop.dart';
import 'package:MarketPlus/widgets/button-blue.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {

  UserService userService = UserService.getInstance();
  var shopList = UserService.productsList;
  List<dynamic> emptyList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
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
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: shopList.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            ItemCardShop(
                              name: shopList[index]['productName'],
                              price: shopList[index]['price'],
                              imageUrl: shopList[index]['imageUrl'],
                              sale: shopList[index]['sale']
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.14,
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ButtonBlue(
                  name: "REALIZAR PAGO",
                  onPressed: () => {
                    userService.EmptyShopList(emptyList),
                    shopList = [],
                    ModalShop(context)
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

