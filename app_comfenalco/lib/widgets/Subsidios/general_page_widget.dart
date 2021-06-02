import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/rendering.dart';
import 'package:background_app_bar/background_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoGeneralWidget extends StatelessWidget {
  final String atras;
InfoGeneralWidget({
  this.atras
});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/fondo4.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: <Widget>[
            _appbarNormal(context),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(height: 10.0),
                  _video(context),
                  SizedBox(height: 10.0),
                  _afiliados(context),
                  SizedBox(height: 10.0),
                  _noAfiliados(context),
                  SizedBox(height: 70.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appbarNormal(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      expandedHeight: 180.0,
      pinned: true,
      floating: false,
      flexibleSpace: BackgroundFlexibleSpaceBar(
        title: Text(
          'Subsidio de Vivienda de Interés Social',
          //overflow: TextOverflow.ellipsis,
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: true),
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
        background: ClipRect(
          child: Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/general.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, atras);
              });
        },
      ),
    );
  }

  Widget _video(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/Postulate.png"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                launch('https://www.youtube.com/watch?v=uyP4wRXjElE');
              },
              color: colorNaranja,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: colorNaranja.withOpacity(.55), width: 1),
                  borderRadius: BorderRadius.circular(
                      15.0)), // aqui va redireccionado a la otra vista
              child: Text(
                'Conoce como postularte!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _afiliados(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: ListTile(
              title: Text(
                'Subsidio Familiar de Vivienda de Interés Social para afiliados',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.orange[800].withOpacity(.76),
                ),
              ),
              subtitle: Text(
                '\n'
                'Es un aporte en dinero, que se otorga por una sola vez al hogar del'
                ' beneficiario, sin cargo de restitución, que constituye un complemento '
                'del ahorro y/o los recursos que le permitan adquirir, construir en sitio'
                ' propio, o mejorar una vivienda de interés social.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.brown,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _noAfiliados(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: ListTile(
              title: Text(
                'Subsidio Familiar de Vivienda para No Afiliados a Caja de Compensación Familiar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.orange[800].withOpacity(.76),
                ),
              ),
              subtitle: Text(
                '\n'
                'El Gobierno Nacional a través del Fondo Nacional de Vivienda,'
                'celebró contrato de encargo de gestión con las Cajas de'
                'Compensación Familiar de todo el País,  para que apoyen el'
                'trámite para la obtención del subsidio familiar de vivienda'
                'de interés social a las familias que no cuenten con'
                'afiliación a Caja de Compensación Familiar.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.brown,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
