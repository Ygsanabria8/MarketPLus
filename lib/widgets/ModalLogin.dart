import 'package:flutter/material.dart';

import 'button-blue.dart';

void ModalLogin(BuildContext context, String urlImage, String message)  {
   showModalBottomSheet(
    barrierColor: Colors.blue[600].withOpacity(0.6),
    backgroundColor: Colors.transparent,
    isDismissible: false,
    context: context,
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 3.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image(
                image: AssetImage(urlImage),
                height: 80,
                width: 80,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo[600]
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ButtonBlue(
                name: 'VOLVER A INTENTAR',
                onPressed: () => {
                  Navigator.pop(context)
                },
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'register');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'REGISTRATE',
                    style: TextStyle(
                      color: Colors.indigo[600],
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
