import 'package:app_comfenalco/widgets/Subsidios/requisitos/requisitos_mejoramiento_vivienda_widget.dart';
import 'package:flutter/material.dart';

class RequisitosMejoramientoLogin extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return RequisitosMejoramientoWidget(
      atras: 'listaRLogin',
    );
  }
}
