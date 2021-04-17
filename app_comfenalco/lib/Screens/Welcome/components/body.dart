import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';
import 'package:app_comfenalco/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 380,
            ),
            _botonSesion(context),
            SizedBox(
              height: 15,
            ),
            _botonRegistrar(context),
            SizedBox(
              height: 15,
            ),
            _botonSubsidio(context),
            // boton para ver los subsidios disponibles
          ],
        ),
      ),
    );
  }

  // boton iniciar sesion
  Widget _botonSesion(BuildContext context) {
    return Container(
      width: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child:
            // ignore: deprecated_member_use
            FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: colorPrimario,
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
          child: Text(
            "Iniciar Sesión",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  // boton registrarse
  Widget _botonRegistrar(BuildContext context) {
    return Container(
      width: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child:
            // ignore: deprecated_member_use
            FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: colorPrimario,
          onPressed: () {
            Navigator.pushNamed(context, 'registrar');
          },
          child: Text(
            "Registrarse",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget _botonSubsidio(BuildContext context) {
    return Container(
      width: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child:
            // ignore: deprecated_member_use
            FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: colorPrimario,
          onPressed: () {
            Navigator.pushNamed(context, 'todosSubsidios');
          },
          child: Text(
            "Subsidios",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = colorPrimario,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child:
            // ignore: deprecated_member_use
            FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: colorPrimario,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
