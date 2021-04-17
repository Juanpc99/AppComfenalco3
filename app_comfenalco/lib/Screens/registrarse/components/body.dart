import 'package:app_comfenalco/components/custom_surfix_icon.dart';
import 'package:flutter/material.dart';
import 'package:app_comfenalco/theme.dart';

import '../../../constantes.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: SafeArea(
    //     child: SizedBox(
    //       width: double.infinity,
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 20),
    //         child: Container(
    //           child: Column(
    //             children: [
    //               _titulo(),
    //               SizedBox(height: 20),
    //               _descripcion(),
    //               SizedBox(height: 20),
    //               RegistroForm(),
    //               SizedBox(height: 20),
    //               _botonRegistrar(context),
    //               SizedBox(height: 100),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 0.0,
          )),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 30.0,
            ),
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                _titulo(),
                SizedBox(height: 20),
                _descripcion(),
                SizedBox(height: 20),
                RegistroForm(),
                SizedBox(height: 20),
                _botonRegistrar(context),
                SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _titulo() {
    return Text(
      'Registrar Cuenta',
      style: TextStyle(
        color: colorPrimario,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _descripcion() {
    return Text(
      "Complete todos los campos con sus datos. ",
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
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
            Navigator.pushReplacementNamed(context, 'cuentaCreada');
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
          SizedBox(height: 20),
          buildApellidoFormField(),
          SizedBox(height: 20),
          buildTipoIDFormField(),
          SizedBox(height: 20),
          buildDocumentoFormField(),
          SizedBox(height: 20),
          buildPaisFormField(),
          SizedBox(height: 20),
          buildCiudadFormField(),
          SizedBox(height: 20),
          buildGeneroFormField(),
          SizedBox(height: 20),
          buildCorreoFormField(),
          SizedBox(height: 20),
          buildPasswordFormField(),
          SizedBox(height: 20),
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
          svgIcon: "assets/icons/usuario.svg",
        ),
      ),
    );
  }

  TextFormField buildFormField(String label, String texto) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: texto,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/usuario.svg",
        ),
      ),
    );
  }

  TextFormField buildApellidoFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Apellidos",
        hintText: 'Ingrese sus apellidos',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/usuario.svg",
        ),
      ),
    );
  }

  TextFormField buildTipoIDFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Tipo Documento",
        hintText: 'Seleccione tipo documento',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/identificacion.svg",
        ),
      ),
    );
  }

  TextFormField buildDocumentoFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "No. Documento",
        hintText: 'Ingrese su documento',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/identificacion.svg",
        ),
      ),
    );
  }

  TextFormField buildPaisFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "País",
        hintText: 'Ingrese su pais de origen',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/planeta.svg",
        ),
      ),
    );
  }

  TextFormField buildCiudadFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Ciudad",
        hintText: 'Ingrese la ciudad donde nacio',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/ubicacion.svg",
        ),
      ),
    );
  }

  TextFormField buildGeneroFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Genero",
        hintText: 'Seleccione su genero',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/genero.svg",
        ),
      ),
    );
  }

  TextFormField buildCorreoFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Correo",
        hintText: 'Ingrese su correo electronico',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/sobre.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Contraseña",
        hintText: 'Cree una contraseña',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/candado.svg",
        ),
      ),
    );
  }

  Widget colorCampoTexto(String label, String texto) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                  color: colorPrimario.withOpacity(.66),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 0.99),
                    buildFormField(label, texto),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
