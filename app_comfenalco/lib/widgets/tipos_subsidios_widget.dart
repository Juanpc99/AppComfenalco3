import 'dart:ui';
import 'package:app_comfenalco/widgets/redesSociales_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TiposSubsidiosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/b4.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
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
              color: Colors.white.withOpacity(0.66),
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  });
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  _botones(context),
                ],
              ),
            ],
          ),
        ),
      ),
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
        _crearBotonRedondeado(
            context,
            Colors.orangeAccent,
            Icons.airline_seat_individual_suite_rounded,
            'Subsidio Especial',
            'pronto'),
        _crearBotonRedondeado(context, Colors.orangeAccent,
            Icons.agriculture_rounded, 'Subsidio Adicional', 'pronto')
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
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget redes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialMedia(
          icon: 'assets/icons/facebook.svg',
          press: () {},
        ),
        SocialMedia(
          icon: 'assets/icons/instagram.svg',
          press: () {},
        ),
        SocialMedia(
          icon: 'assets/icons/twit.svg',
          press: () {},
        ),
        SocialMedia(
          icon: 'assets/icons/youtube.svg',
          press: () {},
        ),
      ],
    );
  }
}
