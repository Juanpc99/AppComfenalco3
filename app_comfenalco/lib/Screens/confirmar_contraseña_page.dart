import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:flutter/material.dart';

class ConfirmarContrasena extends StatefulWidget {
  @override
  _ConfirmarContrasenaState createState() => _ConfirmarContrasenaState();
}

class _ConfirmarContrasenaState extends State<ConfirmarContrasena> {
  final AuthService _auth = AuthService();
  String _contrasena;

  @override
  Widget build(BuildContext context) {
    final Usuarios usuarios = ModalRoute.of(context).settings.arguments;

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
            'Confirmar Contraseña',
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
            //SizedBox(height: 10.0),
            _texto(),
            _crearCapoTexto(),
            SizedBox(height: 10.0),
            _botonConfirmar(context, usuarios),
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
        'Por favor ingresa tú contraseña para validar la cuenta.',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
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
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Ingresar Contraseña',
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
          setState(() {
            _contrasena = valor;
          });
        },
      ),
    );
  }

  Widget _botonConfirmar(BuildContext context, Usuarios usuarios) {
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
            print(_auth.correo() + _contrasena);
            _auth.signIn('${_auth.correo()}', _contrasena, context,
                'actualizar', 'ya puede editar', 'Contraseña incorrecta', usuarios);
          },
          child: Text(
            'Confirmar',
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
