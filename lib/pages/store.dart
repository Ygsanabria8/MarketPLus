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
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30),
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
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        color: Colors.black,
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
