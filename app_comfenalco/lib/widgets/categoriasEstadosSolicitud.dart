import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';

class CategoriaSolicitud extends StatefulWidget {
  @override
  _CategoriaSolicitudState createState() => _CategoriaSolicitudState();
}

class _CategoriaSolicitudState extends State<CategoriaSolicitud> {
  int seleccionIndex = 0;
  final List<String> estados = [
    'Todas las solicitudes',
    'Aprobadas',
    'Rechazadas',
    'Para modificación'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: colorVerdeLimon,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: estados.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                seleccionIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Text(estados[index],
                  style: TextStyle(
                    color:
                        index == seleccionIndex ? Colors.white : Colors.white60,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    
                  )),
            ),
          );
        },
      ),
    );
  }
}
