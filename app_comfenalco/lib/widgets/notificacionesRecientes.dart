import 'package:flutter/material.dart';

class NotificacionesRecientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> solicitudes = [
      'Solicitud Aprobada',
      'Cambios necesarios',
      'Solicitud Rechazada'
    ];
    return Expanded(
      child: Container(
        //height: 485.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
            itemCount: solicitudes.length,
            itemBuilder: (BuildContext context, int index) {
              //final Message solicitud = solicitudes[index];
              return Row(
                children:<Widget>[
                  Text(solicitudes[index]),
                ],
              );
            }),
      ),
    );
  }
}
