import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/services/auth.dart';

import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    colorVerdeOscuro,
                    colorVerdeLimon,
                  ],
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/usuario.png"),
                    ),
                  ),
                  Text(
                    '${_auth.correo()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.menu_open,
                color: colorPrimario,
              ),
              title: Text('Menú Principal'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'menup');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_sharp,
                color: colorPrimario,
              ),
              title: Text('Perfil'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'perfil');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notification_important,
                color: colorPrimario,
              ),
              title: Text('Mis Solicitudes'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'missolicitudes');
              },
            ),
            SizedBox(
              height: 380.0,
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: colorPrimario,
              ),
              title: Text('Cerrar Sesión'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
