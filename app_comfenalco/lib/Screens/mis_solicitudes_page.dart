import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class MisSolicitudesPage extends StatelessWidget {
  const MisSolicitudesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mis Solicitudes',
          style: TextStyle(color: colorPrimarioClaro),
        ),
        iconTheme: IconThemeData(color: colorPrimarioClaro),
      ),
      drawer: MenuWidget(),
    );
  }
}
