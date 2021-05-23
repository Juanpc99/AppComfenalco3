import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/providers/usuarios_provider.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/widgets/redesSociales_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  final AuthService _auth = AuthService();
  UsuariosProvider usuprov = UsuariosProvider();
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
              child: null,
            ),
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user.png"),
                  backgroundColor: colorNaranja,
                ),
                //+ ' ${Usuarios().apellido}'
                title: FutureBuilder<Usuarios>(
                  future: usuprov.fetchPost(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                          snapshot.data.nombre + ' ' + snapshot.data.apellido);
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'menup');
                },
              ),
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
                // _auth.correo() = '';
                _auth.cerrarSesion();
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
