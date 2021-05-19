import 'package:app_comfenalco/Screens/perfil/notificaciones/infoNotificacion.dart';
import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/solicitudes.dart';
import 'package:app_comfenalco/providers/solicitudes_provider.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:flutter/material.dart';

class NotificacionesRecientes extends StatelessWidget {
  final AuthService _auth = AuthService();
  final sProvaider = new SolicitudesProvider();
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
          child: _crearLista(),
        ),
      ),
    );
  }

  Widget _crearLista() {
    try {
      return FutureBuilder(
        future: sProvaider.cargarSubsidios('${_auth.correo()}'),
        builder:
            (BuildContext context, AsyncSnapshot<List<SolicitudesM>> snapshot) {
          if (snapshot.hasData) {
            final solicitudes = snapshot.data;
            return ListView.builder(
              itemCount: solicitudes.length,
              itemBuilder: (context, i) => _crearItems(context, solicitudes[i]),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
    } catch (e) {
      return Image.asset(
        "assets/icons/contactate.gif",
        height: 125.0,
        width: 40.0,
        alignment: Alignment.bottomLeft,
      );
    }
  }

  Widget _crearItems(BuildContext context, SolicitudesM solicitud) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => InfoSolicitud())),
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
                  backgroundColor: _colorAvatar(solicitud.estado),
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 5),
                    // aqui se asigna el titulo de la notificacion
                    Text(
                      solicitud.estado,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    // aqui se asigna el texto de la notificación
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        solicitud.programa,
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
    ;
  }

  _colorAvatar(String estado) {
    if (estado == 'Postulado') {
      return Colors.blue;
    }
    if (estado == 'Por Verificar') {
      return Colors.amber;
    }
    if (estado == 'Calificado') {
      return Colors.green[300];
    }
    if (estado == 'Asignado') {
      return colorVerdeLimon;
    }
    if (estado == 'Cancelado') {
      return Colors.red;
    }
  }
}
