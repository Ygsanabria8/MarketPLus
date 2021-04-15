import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.pushNamed(context, 'login')
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[600],
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Image(
                  image: AssetImage ('assets/img/Logo.png'),
                ),
              )
            ),
            Spacer(),
            CircularProgressIndicator(
              valueColor:AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            Spacer(),
            Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).textScaleFactor * 30
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            )
          ],
        ),
      )
    );
  }
}
