import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import '../constantes.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(color: colorPrimarioClaro),
        ),
        iconTheme: IconThemeData(color: colorPrimarioClaro),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.all(15),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 250.0,
                    height: 250.0,
                    child: Image(
                      image: AssetImage('assets/images/user.png'),
                    ),
                  ),
                  Text(
                    'Juan Pablo Caro',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'juancaro2010@hotmail.com',
                    style: TextStyle(
                        color: Colors.blue,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Icon(
                      Icons.menu_book_rounded,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    'Configurar mi cuenta',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Icon(
                      Icons.menu_book_rounded,
                      color: Colors.blue,
                      size: 30.0,
                    ),
                  ),
                  Text(
                    'Configurar mi cuenta',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
    );
  }
}
