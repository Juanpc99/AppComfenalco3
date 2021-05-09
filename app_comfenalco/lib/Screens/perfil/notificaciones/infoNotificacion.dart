import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';

class InfoSolicitud extends StatefulWidget {
  @override
  _InfoSolicitudState createState() => _InfoSolicitudState();
}

class _InfoSolicitudState extends State<InfoSolicitud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorVerdeLimon,
      appBar: AppBar(
        backgroundColor: colorVerdeLimon,
        title: Text(
          'Nombre de la solicitud',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: colorPrimarioClaro),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Aqui se le pasa el mensaje de la notificacion',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            // return  _buildMessage(message,isMessage);
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
