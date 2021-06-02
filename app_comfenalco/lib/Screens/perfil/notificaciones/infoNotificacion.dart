import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/anexos.dart';
import 'package:app_comfenalco/models/solicitudes.dart';
import 'package:app_comfenalco/providers/anexos_provider.dart';
import 'package:app_comfenalco/providers/solicitudes_provider.dart';
import 'package:app_comfenalco/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoSolicitud extends StatefulWidget {
  @override
  _InfoSolicitudState createState() => _InfoSolicitudState();
}

class _InfoSolicitudState extends State<InfoSolicitud> {
  final aProvider = new AnexosProvider();
  final sProvaider = new SolicitudesProvider();
  @override
  Widget build(BuildContext context) {
    final SolicitudesM solicitudesM = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: colorVerdeLimon,
      appBar: AppBar(
        backgroundColor: colorVerdeLimon,
        title: Text(
          '${solicitudesM.estado}',
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
                child: _crearLista(context, solicitudesM),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearLista(BuildContext context, SolicitudesM solicitudes) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currenIndex = uiProvider.selectIndexOpt;
    print(currenIndex);
    return FutureBuilder(
      future: aProvider.cargarAnexos(solicitudes.idSubsidios),
      builder: (BuildContext context, AsyncSnapshot<List<AnexosM>> snapshot) {
        if (snapshot.hasData) {
          final anexos = snapshot.data;
          return ListView.builder(
            itemCount: anexos.length,
            itemBuilder: (context, i) => _crearItems(context, anexos[i]),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _crearItems(BuildContext context, AnexosM anexos) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
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
            bottomLeft: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: <Widget>[
            CircleAvatar(
              radius: 35.0,
              backgroundColor: Colors.amber,
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 5),
                // aqui se asigna el titulo de la notificacion
                Text(
                  anexos.estado,
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
                    anexos.observaciones,
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
      ),
    );
  }
}
