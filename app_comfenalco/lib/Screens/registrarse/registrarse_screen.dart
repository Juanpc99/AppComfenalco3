import 'package:app_comfenalco/Screens/registrarse/components/body.dart';
import 'package:flutter/material.dart';

class RegistrarseScreen extends StatelessWidget {
  static String routName = 'registrar';
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
            'Registrarse',
            style: TextStyle(color: Colors.grey[350]),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Body(),
      ),
    );
  }
}
