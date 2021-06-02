import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/solicitudes.dart';
import 'package:app_comfenalco/providers/solicitudes_provider.dart';
import 'package:app_comfenalco/providers/ui_provider.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/widgets/categoriasEstadosSolicitud.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificacionesRecientes extends StatelessWidget {
  final AuthService _auth = AuthService();
  final sProvaider = new SolicitudesProvider();
  final indexCateg = CategoriaSolicitudState();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: _crearLista(context),
      ),
    );
  }

  Widget _crearLista(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currenIndex = uiProvider.selectIndexOpt;
    print(currenIndex);
    return FutureBuilder(
      future: _ventana(currenIndex),
      builder:
          (BuildContext context, AsyncSnapshot<List<SolicitudesM>> snapshot) {
        if (snapshot.hasData) {
          final solicitudes = snapshot.data;
          return ListView.builder(
            itemCount: solicitudes.length,
            itemBuilder: (context, i) => _crearItems(context, solicitudes[i]),
          );
        } else if (snapshot.hasData == false) {
          return Center(
            child: Image(
                // Poner imagen de no hay datos
                width: 90.0,
                height: 90.0,
                image: AssetImage('assets/images/buzon-de-correo.png')),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _crearItems(BuildContext context, SolicitudesM solicitud) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'infoSolicitud', arguments: solicitud);
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          // para cambiar el color si la notificacion no ha sido abierta
          // color:chat.unread ? Color(0xFFFFEFEE): Colors.white
          color: Colors.grey[300].withOpacity(.66),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
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
          ],
        ),
      ),
    );
  }

  _colorAvatar(String estado) {
    if (estado == 'Postulado') {
      return Colors.blue;
    }
    if (estado == 'Por Verificar') {
      return Colors.amber;
    }
    if (estado == 'Calificado') {
      return colorVerdeLimon;
    }
    if (estado == 'Asignado') {
      return Colors.teal[400];
    }
    if (estado == 'Cancelado') {
      return Colors.red;
    }
  }

  _ventana(int index) {
    if (index == 0) {
      return sProvaider.cargarSubsidios('${_auth.correo()}');
    }
    if (index == 1) {
      return sProvaider.cargarSubsidios2('${_auth.correo()}', 'Asignado');
    }
    if (index == 2) {
      return sProvaider.cargarSubsidios2('${_auth.correo()}', 'Cancelado');
    }
    if (index == 3) {
      return sProvaider.cargarSubsidios2('${_auth.correo()}', 'Por Verificar');
    }
    if (index == 4) {
      return sProvaider.cargarSubsidios2('${_auth.correo()}', 'Postulado');
    }
    if (index == 5) {
      return sProvaider.cargarSubsidios2('${_auth.correo()}', 'Calificado');
    }
  }
}
