import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';

class ActualizacionDatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/fondo2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Actualización Exitosa!',
            style: TextStyle(color: Colors.grey[350]),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 0.01),
          children: [
            Stack(
              children: <Widget>[
                _foto(context),
              ],
            ),
            SizedBox(height: 30, width: 60),
            _texto(),
            SizedBox(height: 50),
            _botonCodigo(context),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
          backgroundColor: colorPrimario,
          onPressed: () {
            Navigator.pushNamed(context, 'menup');
          },
        ),
      ),
    );
  }

  Widget _botonCodigo(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          color: colorPrimario,
          onPressed: () {
            Navigator.pushNamed(context, 'menup');
          },
          child: Text(
            "Continuar",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }

  Widget _foto(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      child: Image.asset(
        "assets/images/envioE.png",
        fit: BoxFit.cover,
        width: size.width,
      ),
    );
  }

  Widget _texto() {
    return Container(
      width: 30,
      child: Text(
        "Cuenta Registrada!",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
