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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[350],
                ),
                child: Column(
                  children: [
                    SearchBar(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      height: 200,
                      color: Colors.amberAccent,
                      child: Text(
                        "Categorias",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaleFactor * 36,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
}
