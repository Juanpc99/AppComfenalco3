import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class RequisitosMejoramiento extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/fondo3.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Requisitos para Solicitar Subsidio',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushNamed(context, 'reqSitioPyMejoramiento');
                  });
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, 'subsidios');
                }),
          ],
        ),
        body: ListView(
          children: [
            _titulo(),
            SizedBox(height: 20.0),
            _requisito1(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito2(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito3(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito4(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito5(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _botonConcepCla(context),
            SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'En el caso de mejoramiento la casa debe presentar las siguientes carencias básicas',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.orange[800].withOpacity(.76),
        ),
      ),
    );
  }

  Widget _requisito1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Deficiencias en la estructura principal, cimientos, muros ó cubierta.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Carencia o vetustez de acometidas domiciliarias de servicios públicos de acueducto, alcantarillado y energía eléctrica.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito3(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Carencia o vetustez de baños y/o cocina.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito4(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Existencia de pisos en tierra o materiales inapropiados.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito5(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Construcción en materiales provisionales tales como latas, tela asfáltica y madera de desecho.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _botonConcepCla(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: FloatingActionButton.extended(
        label: Text('Requisitos para Vivienda en zona rural'),
        icon: Icon(Icons.arrow_forward_rounded),
        backgroundColor: colorNaranja,
        onPressed: () {
          Navigator.pushNamed(context, 'reqZonaRural');
        },
      ),
    );
  }
}
