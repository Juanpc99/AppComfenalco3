import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/widgets/logo_comfenalco.dart';
import 'package:flutter/material.dart';

class CodigoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/CurvaSuperior.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          title: Text(
            'Recuperar contraseña',
            style: TextStyle(color: Colors.grey[350].withOpacity(.76)),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            SizedBox(
              child: Stack(
                children: <Widget>[
                  _foto(context),
                ],
              ),
            ),
            _texto(),
            SizedBox(
              height: 20.0,
            ),
            _crearCapoTexto(),
            _botonEnviarCodigo(context),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.keyboard_arrow_left,
          ),
          backgroundColor: colorVerdeLimon.withOpacity(.76),
          onPressed: () {
            Navigator.pushNamed(context, 'recuperar');
          },
        ),
      ),
    );
  }

  Widget _foto(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      child: Image.asset(
        "assets/images/codigo.png",
        fit: BoxFit.cover,
        width: size.width,
      ),
    );
  }

  Widget _texto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Por favor ingrese el código que fue enviado a su correo.',
        textAlign: TextAlign.justify,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
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
            hintText: 'Código',
            hintStyle: TextStyle(color: colorPrimario),
            suffixIcon: Icon(
              Icons.crop_free_sharp,
              color: colorPrimario,
            ),
            icon: Icon(
              Icons.crop_square_rounded,
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
            Navigator.pushNamed(context, 'nuevac');
          },
          child: Text(
            'Enviar',
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
}
