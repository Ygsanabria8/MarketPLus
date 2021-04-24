import 'package:MarketPlus/widgets/input.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
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
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Mi cuenta",
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
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.width * 0.40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img/persona.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InputText(
                controller: null,
                label: 'Nombres',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InputText(
                controller: null,
                label: 'Apellidos',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InputText(
                controller: null,
                label: 'Correo electronico',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InputText(
                controller: null,
                label: 'Número de teléfono',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InputText(
                controller: null,
                label: 'Número de documento',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              InputText(
                controller: null,
                label: 'Número de documento',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
