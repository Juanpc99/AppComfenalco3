import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/widgets/redesSociales_widget.dart';
import 'package:flutter/material.dart';


class RecuperarPage extends StatelessWidget {
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Recuperar contraseña',
            style: TextStyle(color: Colors.grey[350]),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            SizedBox(height: 50.0),
            Text('Recuperar Contraseña',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: colorVerdeOscuro,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Poppins")),
            SizedBox(height: 40.0),
            _texto(),
            SizedBox(height: 40.0),
            // _crearCapoTexto(context),
            // _botonEnviarCodigo(context),
            SizedBox(height: 40.0),
            _noRegistrado(context),
            SizedBox(height: 40.0),
            redes(),
          ],
        ),
      ),
    );
  }

  Widget _texto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Text(
        'Por favor ingresa tu correo para enviarte un código de recuperación de contraseña.',
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 16.0, fontFamily: "Poppins"),
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

  
  Widget _noRegistrado(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "No tienes una cuenta? ",
          style: TextStyle(
              fontSize: 18, color: colorPrimario, fontWeight: FontWeight.w500),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'registrar'),
          child: Text(
            "Registrarse",
            style: TextStyle(
                fontSize: 18, color: colorNaranja, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  
}
