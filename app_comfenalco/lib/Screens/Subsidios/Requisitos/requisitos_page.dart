import 'package:app_comfenalco/widgets/Subsidios/requisitos/requisitos_widget.dart';
import 'package:flutter/material.dart';

class Requisitos extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return RequisitosWidget(
      atras: 'listaR',
    );
  }
}
