import 'package:flutter/material.dart';
class VigenciaSubWidget extends StatelessWidget {
   final String atras;
VigenciaSubWidget({this.atras});
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Vigencia de los Subsidios',
            style: TextStyle(
              color: Colors.grey[850],
              fontSize: 12,
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
            _descripcion(context),
          ],
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Vigencia del Subsidio',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.green[800].withOpacity(.76),
        ),
      ),
    );
  }

  Widget _descripcion(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
            child: Text(
              '\n'
              'Los subsidios de vivienda de interés social asignados por las'
              ' Cajas de Compensación Familiar antes del mes de agosto de 2019'
              ' tendrán una vigencia  de doce (12) meses calendario, contados'
              ' desde el primer día del mes siguiente a la fecha de la'
              ' publicación de su asignación y se podrán prorrogar mediante'
              ' acuerdo expedido por su respectivo Consejo Directivo, '
              ' por un plazo no superior a doce (12) meses,'
              ' prorrogable máximo por doce (12) meses más.'
              '\n'
              'Los subsidios de vivienda de interés social asignados por '
              'las Cajas de Compensación Familiar a partir del mes de agosto'
              ' de 2019 en adelante tendrán una vigencia  de treinta y seis'
              ' (36) meses calendario contados desde el primer día del '
              'mes siguiente a la fecha de la publicación de su asignación '
              'y se podrán prorrogar mediante acuerdo expedido por su '
              'respectivo Consejo Directivo, por un plazo no superior a'
              ' veinticuatro (24) meses más.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
