import 'package:MarketPlus/widgets/button-blue.dart';
import 'package:MarketPlus/widgets/socialIcons.dart';
import 'package:MarketPlus/widgets/input.dart';
import 'package:MarketPlus/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:MarketPlus/services/user.service.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  UserService userService = UserService.getInstance();

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
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  "Iniciar Sesion",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 30),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    children: [
                      InputText(
                        controller: _emailController,
                        label: 'email',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      InputText(
                        controller: _passwordController,
                        label: 'contraseña',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      ButtonBlue(
                        name: 'Iniciar Sesion',
                        onPressed: () => {
                          Navigator.pushNamed(context, 'home'),
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcons(
                      iconSrc: "assets/img/facebook_icon.png",
                      press: () {},
                    ),
                    SocialIcons(
                      iconSrc: "assets/img/google-logo.png",
                      press: () {
                        var user = userService.signInWithGoogle();
                        if (user != null) {
                          Navigator.pushNamed(context, 'home');
                        } else {
                          print('Usuario no valido');
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Text(
                        "Aun no tienes una cuenta?",
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 15,
                            color: Colors.black),
                      ),
                      GestureDetector(
                        child: Text(
                          " crear cuenta",
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 15,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () => {Navigator.pushNamed(context, 'register')},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
