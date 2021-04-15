import 'package:MarketPlus/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _apellidoController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue[600],
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Image(
              image: AssetImage('assets/img/Logo.png'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "Registrarse",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                InputText(
                  controller: _nameController,
                  label: 'Nombre',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                InputText(
                  controller: _apellidoController,
                  label: 'Apellido',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                InputText(
                  controller: _emailController,
                  label: 'Correo electronico',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                InputText(
                  controller: _passwordController,
                  label: 'Contraseña',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    disabledColor: Colors.amber,
                    child: Text(
                      "Registrate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).textScaleFactor * 18,
                      ),
                    ),
                    color: Colors.blue[700],
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, ''),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
