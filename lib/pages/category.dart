import 'package:MarketPlus/services/products.service.dart';
import 'package:MarketPlus/widgets/ItemCardExtend.dart';
import 'package:MarketPlus/widgets/searchBar.dart';
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
                SearchBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              //crear un card que ocupe todo el ancho en un solo producto
                              ItemCardExtend(
                                name: items[index]['productName'],
                                price: items[index]['price'],
                                imageUrl: items[index]['imageUrl'],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.03,
                              ),
                            ],
                          );
                        }
                    ),
                ),
              ],
            ),
          ),

      ),
    );
  }
}
