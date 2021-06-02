import 'package:app_comfenalco/widgets/header_widget.dart';
import 'package:app_comfenalco/widgets/redesSociales_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class ContactoWidget extends StatelessWidget {
  final String atras;
  ContactoWidget({this.atras});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/fondo4.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      colorNaranja,
                      colorAmarillo,
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 500,
              width: 450,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                children: <Widget>[
                  _titulo(),
                  SizedBox(height: 30),
                  _contactos(),
                  SizedBox(height: 40),
                  redes(),
                  _gif(),
                  //SizedBox(height: 90),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.keyboard_arrow_left,
          ),
          backgroundColor: Colors.amber[900],
          onPressed: () {
            Navigator.pushNamed(context, atras);
          },
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
      child: Text(
        'Mayor información comuníquese con nosotros',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 25,
          fontFamily: "Poppins",
          color: Colors.orange[800].withOpacity(.76),
        ),
      ),
      decoration: BoxDecoration(color: Colors.transparent),
    );
  }

  Widget _contactos() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Cali (2) 8862727 opción 2 y luego 2.'
        '\n'
        'Buenaventura (2) 242 2860 – 242 2848'
        '\n'
        'Buga (2) 228 2848'
        '\n'
        'Caicedonia (2) 216 5748'
        '\n'
        'Cartago (2) 240 4056'
        '\n'
        'Palmira (2) 275 5160'
        '\n'
        'Roldanillo (2) 229 4141'
        '\n'
        'Tuluá (2) 226 2656',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _gif() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      child: Image.asset(
        "assets/icons/contactate.gif",
        height: 125.0,
        width: 40.0,
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
