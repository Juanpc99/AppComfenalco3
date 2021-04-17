import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/widgets/logo_comfenalco.dart';
import 'package:flutter/material.dart';

class NuevaContrasena extends StatelessWidget {
  const NuevaContrasena({Key key}) : super(key: key);

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
          iconTheme: IconThemeData(color: Colors.grey),
          title: Text(
            'Nueva Contraseña',
            style: TextStyle(color: Colors.grey[350]),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Stack(
              children: <Widget>[
                _foto(context),
              ],
            ),
            SizedBox(height: 30.0),
            _crearCapoTexto(),
            SizedBox(height: 15.0),
            _crearCampoText2(),
            SizedBox(height: 10.0),
            _botonEnviarCodigo(context),
          ],
        ),
      ),
    );
  }

  Widget _foto(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      child: Image.asset(
        "assets/images/passw.png",
        fit: BoxFit.cover,
        width: size.width,
      ),
    );
  }

  Widget _texto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        'Por favor ingresa tu correo para enviarte un codigo de recuperación de contraseña',
        textAlign: TextAlign.justify,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }

  Widget _crearCapoTexto() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: colorVerdeLimon.withOpacity(.66),
          borderRadius: BorderRadius.circular(29)),
      child: TextField(
        style: TextStyle(color: Colors.black),
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Nueva Contraseña',
            hintStyle: TextStyle(color: colorPrimario),
            suffixIcon: Icon(
              Icons.lock_open,
              color: colorPrimario,
            ),
            icon: Icon(
              Icons.lock,
              color: colorPrimario,
            )),
        onChanged: (valor) {
          //_email = valor;
        },
      ),
    );
  }

  Widget _textoCabeza(String texto) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            texto,
            style: TextStyle(
                color: Colors.green,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _botonEnviarCodigo(BuildContext context) {
    return Container(
      height: 55.0,
      width: 400.0,
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: FlatButton(
          height: 45.0,
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'menup');
          },
          child: Text(
            'Cambiar contraseña',
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: colorPrimarioClaro),
          ),
          color: colorPrimario,
        ),
      ),
    );
  }

  Widget _crearCampoText2() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: colorVerdeLimon.withOpacity(.66),
          borderRadius: BorderRadius.circular(29)),
      child: TextField(
        style: TextStyle(color: Colors.black),
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Confirmar Contraseña',
            hintStyle: TextStyle(color: colorPrimario),
            suffixIcon: Icon(
              Icons.lock_open,
              color: colorPrimario,
            ),
            icon: Icon(
              Icons.lock,
              color: colorPrimario,
            )),
        onChanged: (valor) {
          //_email = valor;
        },
      ),
    );
  }
}
