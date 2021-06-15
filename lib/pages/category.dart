import 'package:MarketPlus/services/products.service.dart';
import 'package:MarketPlus/widgets/ItemCardExtend.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final indexElement;
  CategoryPage({this.indexElement});

  @override
  Widget build(BuildContext context) {
    final items = [];
    items.addAll(products[indexElement]['products']);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () => (Navigator.pop(context)),
        ),
      ),
      body: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                products[indexElement]['type'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).textScaleFactor * 40,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          //crear un card que ocupe todo el ancho en un solo producto
                          ItemCardExtend(
                            name: items[index]['productName'],
                            price: items[index]['price'],
                            imageUrl: items[index]['imageUrl'],
                            sale: items[index]['sale'],
                            product: items[index],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
