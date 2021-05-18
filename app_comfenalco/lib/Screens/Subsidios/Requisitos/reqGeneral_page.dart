import 'package:app_comfenalco/Screens/Subsidios/Requisitos/menuReq.dart';
import 'package:app_comfenalco/widgets/Subsidios/req_general_widget.dart';
import 'package:flutter/material.dart';

class ListaRequisitos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListaRequisitosWidget(
      atras: 'subsidios',
      rutas: menuProvider.cargarData(),
    );
  }
}
