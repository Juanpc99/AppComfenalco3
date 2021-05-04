import 'package:app_comfenalco/Screens/perfil/editarPerfil/components/body.dart';
import 'package:flutter/material.dart';

class ActualizarScreen extends StatefulWidget {
  static String routName = 'actualizar';

  @override
  _ActualizarScreenState createState() => _ActualizarScreenState();
}

class _ActualizarScreenState extends State<ActualizarScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          title: Text(
            'Editar perfil',
            style: TextStyle(color: Colors.grey[350]),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: GestureDetector(
            onTap: () {
              final FocusScopeNode focus = FocusScope.of(context);
              if (!focus.hasPrimaryFocus && focus.hasFocus) {
                FocusManager.instance.primaryFocus.unfocus();
              }
            },
            child: Body()),
      ),
    );
  }
}
