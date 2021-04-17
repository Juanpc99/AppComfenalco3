import 'package:app_comfenalco/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:app_comfenalco/components/custom_surfix_icon.dart';
import 'package:app_comfenalco/constantes.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  Color _colorEmail = Colors.black;
  final AuthService _auth = AuthService();
  final _fromKey = GlobalKey<FormState>();
  String email = '', password = '';
  String error = '';
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
            'Registrarse',
            style: TextStyle(color: Colors.grey[350]),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 50.0),
          children: [
            _textoPrincipal(),
            SizedBox(height: 10),
            _subtitulo(),
            SizedBox(height: 30),
            
            /*SizedBox(height: 20),
            //_textoCabeza('Nombre'),
            _crearNombre(),
            _textoCabeza('Apellido'),
            _crearNombre(),
            _textoCabeza('Tipo Documento'),
            _crearNombre(),
            _textoCabeza('Documento'),
            _crearNombre(),
            _textoCabeza('Pais'),
            _crearNombre(),
            _textoCabeza('Ciudad'),
            _crearNombre(),
            _textoCabeza('Genero'),
            _crearNombre(),
            _textoCabeza('Correo'),
            _crearNombre(),
            _textoCabeza('Contraseña'),
            _crearNombre(),
            **/
            SizedBox(height: 30),
            _botonRegistrar(context),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.keyboard_arrow_left,
          ),
          backgroundColor: colorPrimario,
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }

  Widget _textoPrincipal() {
    return Container(
      child: Text(
        "Registrar Cuenta",
        style: TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _subtitulo() {
    return Container(
      child: Text(
        "Complete todos los campos con sus datos. ",
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _crearNombre() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: Colors.grey[350].withOpacity(.66),
          borderRadius: BorderRadius.circular(29)),
      child: TextField(
        style: TextStyle(color: _colorEmail),
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Nombre',
            hintText: 'Nombre Completo',
            hintStyle: TextStyle(color: colorPrimario),
            suffixIcon: Icon(
              Icons.alternate_email,
              color: colorPrimario,
            ),
            icon: Icon(
              Icons.email,
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
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _botonRegistrar(BuildContext context) {
    return Container(
      height: 50.0,
      width: 330.0,
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
            'Registrar',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: colorPrimarioClaro),
          ),
          color: colorPrimario,
        ),
      ),
    );
  }

/*
  TextFormField buildNameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Nombre",
        hintText: 'Ingrese su nombre completo',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/facebook.svg",
        ),
      ),
    );
  }
  **/
}

class RegistroForm extends StatefulWidget {
  @override
  _RegistroFormState createState() => _RegistroFormState();
}

class _RegistroFormState extends State<RegistroForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildNameFormField(),
        ],
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
          decoration: InputDecoration(
            labelText: "Nombre",
            hintText: 'Ingrese su nombre completo',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/facebook.svg",
            ),
          ),
        );
  }
}
