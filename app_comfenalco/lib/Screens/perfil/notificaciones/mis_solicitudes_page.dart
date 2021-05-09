import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/widgets/barraProgreso.dart';
import 'package:app_comfenalco/widgets/categoriasEstadosSolicitud.dart';
import 'package:app_comfenalco/widgets/menu_widget.dart';
import 'package:app_comfenalco/widgets/notificacionesRecientes.dart';
import 'package:flutter/material.dart';

class MisSolicitudesPage extends StatelessWidget {
  const MisSolicitudesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: colorVerdeLimon,
      appBar: AppBar(
        title: Text(
          'Mis Solicitudes',
          style: TextStyle(color: colorPrimarioClaro),
          textAlign: TextAlign.center,
        ),
        iconTheme: IconThemeData(color: colorPrimarioClaro),
        backgroundColor: colorVerdeLimon,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: colorPrimarioClaro,
            onPressed: () {},
          ),
        ],
      ),
      drawer: MenuWidget(),
      body: Column(
        children: <Widget>[
          CategoriaSolicitud(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  BarraProgreso(),
                  SizedBox(height: 20),
                  NotificacionesRecientes(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
