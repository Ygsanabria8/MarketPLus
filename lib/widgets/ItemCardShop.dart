import 'package:MarketPlus/services/user.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemCardShop extends StatelessWidget {
  String name;
  String price;
  String imageUrl;
  String sale;
  var userService = UserService.getInstance();

  ItemCardShop(
      {Key key, this.name, this.imageUrl, this.price, this.sale});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Image(
                image: AssetImage(imageUrl),
                width: 80,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$price",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize:
                            MediaQuery.of(context).textScaleFactor * 28,
                            letterSpacing: 1.7,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Text(
                        "$sale",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize:
                            MediaQuery.of(context).textScaleFactor * 18,
                            letterSpacing: 1.7,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).textScaleFactor * 26,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
