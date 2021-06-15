import 'package:MarketPlus/services/user.service.dart';
import 'package:MarketPlus/widgets/button-blue.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {

  TextEditingController _emailController = TextEditingController();
  var user = UserService.user;

  @override
  Widget build(BuildContext context) {
    _emailController.text = user['userFound']['email'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
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
              TextField(
                controller: _emailController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Correo electronico",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ButtonBlue(
                name: 'CERRAR SESIÓN',
                onPressed: (){
                  UserService.user = null;
                  Navigator.pushReplacementNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
