import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class ConcepCla extends StatelessWidget {
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
            'Conceptos Clave en el Subsidio',
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
        body: ListView(children: [
          _titulo(),
          _concepto1(context),
          _concepto2(context),
          _concepto3(context),
          _concepto4(context),
          //_botonRequisitos(context),
          SizedBox(height: 80),
        ]),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Hogar objeto del subsidio familiar de vivienda',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.orange[800].withOpacity(.76),
        ),
      ),
    );
  }

  Widget _concepto1(BuildContext context) {
    return Card(
      color: Colors.white10.withOpacity(.65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: const ListTile(
                subtitle: Text(
                  'Se entiende por hogar, el conformado por una o más personas '
                  'que integren el mismo núcleo familiar, los cónyuges, las '
                  'uniones maritales de hecho, incluyendo las parejas del '
                  'mismo sexo, y/o el grupo de personas unidas por vínculos'
                  'de parentesco hasta tercer grado de consanguinidad, '
                  'segundo de afinidad y primero civil, que compartan un '
                  'mismo espacio habitacional. Vivienda de Interés Social – VIS',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _concepto2(BuildContext context) {
    return Card(
      color: Colors.white10.withOpacity(.65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                subtitle: Text(
                  'De conformidad con lo previsto en el artículo 91 de la Ley 388 de 1997, la vivienda de interés social es aquella que se desarrolla para garantizar el derecho a la vivienda de los hogares de menores ingresos, que cumple con los estándares de calidad en diseño urbanístico, arquitectónico y de construcción sostenible, y cuyo valor no exceda ciento treinta y cinco salarios mínimos mensuales legales vigentes (135 SMMLV).',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _concepto3(BuildContext context) {
    return Card(
      color: Colors.white10.withOpacity(.65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                subtitle: Text(
                  'Excepcionalmente, para las '
                  'aglomeraciones urbanas definidas por el Conpes y cuya '
                  'población supere un millón (1.000.000) de habitantes, '
                  'el Gobierno nacional podrá establecer como precio máximo'
                  'de la vivienda de interés social la suma de ciento '
                  'cincuenta salarios mínimos mensuales legales vigentes '
                  '(150 SMMLV).',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _concepto4(BuildContext context) {
    return Card(
      color: Colors.white10.withOpacity(.65),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                subtitle: Text(
                  'Para el caso de los municipios que hacen parte de dichas aglomeraciones, el valor aplicará únicamente para aquellos en que el Gobierno nacional demuestre presiones en el valor del suelo, que generan dificultades en la provisión de vivienda de interés social. El valor máximo de la Vivienda de Interés Prioritario, será de noventa salarios mínimos mensuales legales vigentes (90 SMMLV).',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonRequisitos(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
      child: FloatingActionButton.extended(
        label: Text(
          'Requisitos',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        icon: Icon(Icons.arrow_forward_rounded),
        backgroundColor: colorNaranja,
        onPressed: () {
          Navigator.pushNamed(context, 'requisitos');
        },
      ),
    );
  }
}
