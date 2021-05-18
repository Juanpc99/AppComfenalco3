import 'package:app_comfenalco/widgets/Subsidios/requisitos/req_zona_rural_widget.dart';
import 'package:flutter/material.dart';

class RequisitosZonaRLogin extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return RequisitosZonaRWidget(atras: 'listaRLogin');
  }
}
