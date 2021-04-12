import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class LoginPage extends StatefulWidget {
  
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[400],
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    "Iniciar Sesion",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 30
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration:
                      InputDecoration(labelText: 'Email'
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password'
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
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
                        "Raised Button",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).textScaleFactor * 18,
                        ),  
                      ),
                      color: Colors.blue[700],
                      onPressed: ()  {
                        print("Hola Raised Button");
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}