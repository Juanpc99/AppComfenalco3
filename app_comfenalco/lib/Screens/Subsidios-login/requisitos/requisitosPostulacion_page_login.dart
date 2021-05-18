import 'package:app_comfenalco/widgets/Subsidios/requisitos/requisitos_postulacion_widget.dart';
import 'package:flutter/material.dart';

class RequisitosPostulacionLogin extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return RequisitosPostulacionWidget(
      atras: 'listaRLogin',
    );
  }
}
