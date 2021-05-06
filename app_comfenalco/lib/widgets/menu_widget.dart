import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/widgets/redesSociales_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/personas.png")),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    colorAmarillo,
                    colorNaranja,
                  ],
                ),
              ),
              /*
              child: Column(
                children: <Widget>[
                  Text(
                    '${_auth.correo()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
              **/
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.png"),
                backgroundColor: colorNaranja,
              ),
              //+ ' ${Usuarios().apellido}'
              title: Text(
                '${Usuarios().nombre}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
              //onTap: () {
              // Navigator.pushReplacementNamed(context, 'menup');
              //},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.menu_open,
                color: Colors.grey[600].withOpacity(.66),
              ),
              title: Text('Menú Principal'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'menup');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_sharp,
                color: Colors.grey[600].withOpacity(.66),
              ),
              title: Text('Ver Perfil'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'perfil');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notification_important,
                color: Colors.grey[600].withOpacity(.66),
              ),
              title: Text('Mis Solicitudes'),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'missolicitudes');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.grey[600].withOpacity(.66),
              ),
              title: Text('Cerrar Sesión'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            SizedBox(height: 130.0),
            ListTile(
              title: Text(
                'Política de tratamiento de información',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              onTap: () {
                SocialMedia(
                  press: () => {
                    launch(
                        'https://www.comfenalcovalle.com.co/wp-content/uploads/2020/03/Politica-Tratamiento-Informacion-ComfenalcoValle-25-Feb-2020.pdf'),
                  },
                );
              },
            ),
            //SizedBox(height: 1),
            ListTile(
              title: Text(
                'Condiciones y devoluciones',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              onTap: () {
                SocialMedia(
                  press: () => {
                    launch(
                        'https://www.comfenalcovalle.com.co/wp-content/uploads/2020/08/Condiciones-devoluciones-ventas-App-Comfenalco-Valle-delagente-V3-06-agosto-2020.pdf'),
                  },
                );
              },
            ),
            ListTile(
              title: Text(
                'Términos de uso',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              onTap: () {
                SocialMedia(
                  press: () => {
                    launch(
                        'https://www.comfenalcovalle.com.co/wp-content/uploads/2020/08/T%C3%A9rminos-y-condiciones-uso-de-plataforma-Comfenalco-Valle-delagente-V2-06-agosto-2020.pdf'),
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
