import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/providers/usuarios_provider.dart';

import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final AuthService _auth = AuthService();
  UsuariosProvider usuProv = UsuariosProvider();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/fondo2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Editar Perfil',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey[600],
            ),
          ),
          iconTheme: IconThemeData(color: Colors.grey[600]),
          backgroundColor: Colors.transparent,
          elevation: 100,
        ),
        drawer: MenuWidget(),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.white54.withOpacity(0.76),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 210.0,
                      height: 210.0,
                      child: Image(
                        image: AssetImage('assets/images/user7.png'),

                        //fit: BoxFit.fill,
                      ),
                    ),
                    FutureBuilder(
                        future: usuProv.fetchPost(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data.nombre +
                                  ' ' +
                                  snapshot.data.apellido,
                              style: TextStyle(
                                  color: colorVerdeOscuro,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            );
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                    Text(
                      '${_auth.correo()}',
                      style: TextStyle(
                          color: colorVerdeLimon,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'confirmar');
              },
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                color: Colors.grey[400].withOpacity(.25),
                onPressed: () {
                  Navigator.pushNamed(context, 'confirmar');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: colorVerdeClaro,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text('Editar datos',
                            style: TextStyle(fontSize: 20))),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colorVerdeClaro,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'pronto');
              },
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                color: Colors.grey[400].withOpacity(.25),
                onPressed: () {
                  Navigator.pushNamed(context, 'pronto');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: colorVerdeClaro,
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Text('Cambiar contraseña',
                            style: TextStyle(fontSize: 20))),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: colorVerdeClaro,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
