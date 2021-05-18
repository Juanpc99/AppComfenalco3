import 'package:app_comfenalco/widgets/Subsidios/subsidio_familiar.dart';
import 'package:flutter/material.dart';

// import 'package:app_comfenalco/constantes.dart';

class SubsidioPage extends StatelessWidget {
  const SubsidioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SubsidioWidget(
        rut1: 'subsidioInfo',
        rut2: 'subsidioAfiliados',
        rut3: 'subsidioNoAfiliados',
        rut4: 'listaR',
        rut5: 'vigenciaSub',
        rut6: 'pagoSub',
        rut7: 'contacto',
        atras: 'todosSubsidios');
  }
}
