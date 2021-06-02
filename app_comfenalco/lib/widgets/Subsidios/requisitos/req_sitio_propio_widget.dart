import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class RequisitosSitioPropioMejoramientoWidget extends StatelessWidget {
  final String atras;
 RequisitosSitioPropioMejoramientoWidget({
   this.atras,
 });
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
                    Navigator.pushNamed(context, atras);
                  });
            },
          ),
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
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito8(context),
            //_botonConcepCla(context),
            SizedBox(height: 100.0),
          ],
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Requisitos para inscribirse al programa de construcción en sitio propio o mejoramiento de vivienda',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Fotocopias de la cédula del Jefe de Hogar y su grupo familiar (Mayores de edad).',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Fotocopia de la escritura de compraventa o certificación de poseedor dada por el Alcalde.',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Original del certificado de tradición vigente.',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Recibo de impuesto predial (Que incluya avalúo catastral, nombre del propietario y estar al día).',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Original del certificado de No Alto Riesgo.',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Original y 1 copia de la línea de demarcación (Oficina de Planeación).',
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
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Carta laboral vigente (De todos los mayores de edad del grupo familiar).',
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

  Widget _requisito8(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 1.0),
      child: ListTile(
        title: Text(
          'Fotocopia de los recibos de servicios públicos para mejoramiento o disponibilidad de servicios para CSP (acueducto, alcantarillado y energía).',
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
