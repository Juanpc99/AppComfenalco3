import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class RequisitosZonaR extends StatelessWidget {
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
                    Navigator.pushNamed(context, 'reqMejoramiento');
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
            _requisito6(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito7(context),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Requisitos para postularse al subsidio familiar de vivienda en zona rural',
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
          'Tener conformado un grupo familiar o unipersonal.',
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
          'Alguno de los postulantes debe ser afiliado a la Caja de Compensación Comfenalco Valle delagente.',
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
          'Ninguno de los miembros del Hogar podrá ser propietario de un inmueble diferente al predio para el que está haciendo su solicitud.',
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
          'La vivienda o terreno debe encontrarse libre de limitaciones de dominio, condiciones resolutorias, embargos ó gravámenes.',
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
          'Ninguno pudo haber sido beneficiario anteriormente de un subsidio familiar de vivienda por parte de una Caja de compensación Familiar, Inurbe, Forec , Banco agrario o crédito del ICT, etc.',
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

  Widget _requisito6(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Los ingresos del grupo familiar no pueden superar los 4 SMMLV.',
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

  Widget _requisito7(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Tener un ahorro previo que puede estar en las modalidades de: cuenta de ahorro programado, cesantías inmovilizadas o lote de terreno (en el caso de construcción en sitio propio), los cuales deberán estar debidamente certificados.',
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
}
