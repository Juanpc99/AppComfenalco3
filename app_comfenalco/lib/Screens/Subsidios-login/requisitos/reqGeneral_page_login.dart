import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/menuReq_login.dart';
import 'package:app_comfenalco/widgets/Subsidios/req_general_widget.dart';
import 'package:flutter/material.dart';

class ListaRequisitosLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListaRequisitosWidget(
      atras: 'subsidiosLogin',
      rutas: menuProviderLoginLogin.cargarData(),
    );
  }
}
