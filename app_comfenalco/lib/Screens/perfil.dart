import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final AuthService _auth = AuthService();
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
                      width: 280.0,
                      height: 280.0,
                      child: Image(
                        width: 50,
                        height: 50,
                        image: AssetImage('assets/images/user5.png'),

                        //fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Juan Pablo Caro',
                      style: TextStyle(
                          color: colorVerdeOscuro,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${_auth.correo()}',
                      style: TextStyle(
                          color: colorVerdeLimon,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Icon(
                        Icons.menu_book_rounded,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      'Configurar mi cuenta',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Icon(
                        Icons.menu_book_rounded,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      'Configurar mi cuenta',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                    )
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
