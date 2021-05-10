import 'dart:ui';

import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/widgets/menu_widget.dart';

import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MenuWidget(),
          _fondo(context),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _appbarNormal(context),
                SizedBox(height: 20),
                _botones(context),
              ],
            ),
          ),
        ],
      ),
      drawer: MenuWidget(),
      drawerScrimColor: Colors.transparent,
    );
  }

  Widget _fondo(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: -25,
          child: Image.asset(
            "assets/images/b4.png",
            width: size.width * 1.13,
          ),
        ),
      ],
    );
  }

  Widget _appbarNormal(BuildContext context) {
    return Stack(
      children: <Widget>[
        AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          //expandedHeight: 180.0,
          title: Text(
            ' Menú Subsidios',
            //overflow: TextOverflow.ellipsis,
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: true),
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
        ),
      ],
    );
  }

  Widget _botones(BuildContext context) {
    return Table(children: [
      TableRow(children: [
        _crearBotonRedondeado(context, Colors.orangeAccent, Icons.home_rounded,
            'Subsidio Vivienda', 'subsidios'),
        _crearBotonRedondeado(context, Colors.orangeAccent,
            Icons.family_restroom_rounded, 'Subsidio Familiar', 'pronto')
      ]),
      TableRow(children: [
        _crearBotonRedondeado(context, Colors.orangeAccent,
            Icons.monetization_on_outlined, 'Subsidio Especial', 'pronto'),
        _crearBotonRedondeado(context, Colors.orangeAccent,
            Icons.cloud_queue_outlined, 'Subsidio Adicional', 'pronto')
      ]),
      TableRow(
        children: [
          _crearBotonRedondeado(context, Colors.orangeAccent,
              Icons.room_service_rounded, 'Subsidio en servicios', 'pronto'),
          _crearBotonRedondeado(context, Colors.orangeAccent,
              Icons.more_horiz_rounded, 'Otros Subsidios', 'pronto')
        ],
      )
    ]);
  }

  Widget _crearBotonRedondeado(BuildContext context, Color color,
      IconData icono, String texto, String ruta) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
                color: Colors.grey[350].withOpacity(0.66),
                borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ruta);
                  },
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: color,
                    child: Icon(icono, color: Colors.white, size: 35.0),
                  ),
                ),
                Text(
                  '$texto',
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
