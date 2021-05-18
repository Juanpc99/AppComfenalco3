import 'package:app_comfenalco/widgets/Subsidios/subsidio_familiar.dart';
import 'package:flutter/material.dart';

// import 'package:app_comfenalco/constantes.dart';

class SubsidioPageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubsidioWidget(
        rut1: 'subsidioInfoLogin',
        rut2: 'subsidioAfiliadosLogin',
        rut3: 'subsidioNoAfiliadosLogin',
        rut4: 'listaRLogin',
        rut5: 'vigenciaSubLogin',
        rut6: 'pagoSubLogin',
        rut7: 'contactoLogin',
        atras: 'menup');
  }
}
