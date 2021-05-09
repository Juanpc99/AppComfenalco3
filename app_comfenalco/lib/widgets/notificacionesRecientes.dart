import 'package:app_comfenalco/Screens/perfil/notificaciones/infoNotificacion.dart';
import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';

class NotificacionesRecientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> solicitudes = [
      ' Solicitud Aprobada',
      ' Cambios necesarios',
      ' Solicitud Rechazada'
    ];
    final List<String> infoSolicitudes = [
      ' Su solicitud ha sido aprobada, felicitaciones!',
      ' Hemos recibido sus documentos pero es necesario que vuelva a cargar algunos documentos para ser revisados de nuevo',
      ' Lamentamos comunicarte que no se te a aprobado la soliictud al subsidio de vivienda'
    ];
    final List<String> fechaSol = ['3:10 pm', ' 11:00 am', ' 8:40 pm'];
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
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
              itemCount: solicitudes.length,
              itemBuilder: (BuildContext context, int index) {
                //final Message solicitud = solicitudes[index];
                return GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => InfoSolicitud())),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                      right: 20.0,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      // para cambiar el color si la notificacion no ha sido abierta
                      // color:chat.unread ? Color(0xFFFFEFEE): Colors.white
                      color: Color(0xFFFFEFEE),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35.0,
                              backgroundColor: colorVerdeClaro,
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 5),
                                // aqui se asigna el titulo de la notificacion
                                Text(
                                  solicitudes[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                // aqui se asigna el texto de la notificación
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    infoSolicitudes[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              fechaSol[index],
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            // cuando se conecte a la base se debe cambiar el
                            // container por chat o el nombre de la lista.unread ? Container
                            Container(
                              width: 40.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: colorVerdeLimon,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'New',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // aca se debe agregar : Text(''),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
