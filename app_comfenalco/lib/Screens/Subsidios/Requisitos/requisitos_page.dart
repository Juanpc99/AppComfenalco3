import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class Requisitos extends StatelessWidget {
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
                    Navigator.pushNamed(context, 'listaR');
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
        'Requisitos para solicitar el subsidio familiar de vivienda de interés social',
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
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        subtitle: Text(
          'Tener conformado un grupo unipersonal o familiar hasta en tercer grado de consanguinidad, segundo de afinidad y primero civil.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        subtitle: Text(
          'Alguno de los integrantes del grupo familiar sea afiliado a la Caja de Compensación Familiar Comfenalco Valle.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito3(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        subtitle: Text(
          'Los ingresos del grupo familiar no superen los cuatro salarios mínimos legales mensuales vigentes (4 SMLMV).',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito4(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        subtitle: Text(
          'No ser propietario de vivienda en ninguna parte del territorio nacional, cuando se trate de subsidio para adquisición de vivienda nueva.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito5(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        subtitle: Text(
          'Al menos uno de los integrantes del grupo familiar debe ser el propietario del lote o terraza legalizados, cuanto se trate de construcción en sitio propio o de la vivienda a la cual se le aplicará el mejoramiento de vivienda.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _requisito6(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        subtitle: Text(
          'Que ninguno de los miembros del grupo familiar haya adquirido'
          'una vivienda del Instituto de Crédito Territorial o construido'
          'una solución habitacional con aplicación de créditos de tal'
          'entidad; NO haber sido beneficiario de un subsidio familiar '
          'de vivienda del INURBE, CAJA AGRARIA, FOCAFE, FOREC, '
          'FONVIVIENDA o CAJA DE COMPENSACION FAMILIAR.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(Icons.check, color: colorNaranja),
      ),
    );
  }

  Widget _botonConcepCla(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
      child: FloatingActionButton.extended(
        label: Text('Req. Sitio Propio y Mejoramiento'),
        icon: Icon(Icons.arrow_forward_rounded),
        backgroundColor: colorNaranja,
        onPressed: () {
          Navigator.pushNamed(context, 'reqSitioPyMejoramiento');
        },
      ),
    );
  }
}
