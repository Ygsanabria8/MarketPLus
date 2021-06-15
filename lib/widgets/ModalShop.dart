import 'package:flutter/material.dart';

import 'button-blue.dart';

void ModalShop(BuildContext context)  {
  showModalBottomSheet(
    barrierColor: Colors.blue[600].withOpacity(0.6),
    backgroundColor: Colors.transparent,
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
                image: AssetImage('assets/img/check.png'),
                height: 80,
                width: 80,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'Tu pedido se ha realizado con éxito.',
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
                name: 'TERMINAR PEDIDO',
                onPressed: () => {
                  Navigator.pushReplacementNamed(context,'home')
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
