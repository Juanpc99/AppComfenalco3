import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class InfoSubAfil extends StatelessWidget {
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
            'Subsidio de Vivienda para Afiliados',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            _afiliados(context),
            SizedBox(height: 5.0),
            _viviendaNueva(context),
            SizedBox(height: 10.0),
            _mejoramientoVivienda(context),
            SizedBox(height: 10.0),
            _constrSitioPropio(context),
            SizedBox(height: 5.0),
            _botonConcepCla(context),
            SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }

  Widget _appbarNormal() {
    return SliverAppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      expandedHeight: 50.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'Subsidio de Vivienda para Afiliados',
          overflow: TextOverflow.ellipsis,
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: true),
          style: TextStyle(
              color: Colors.grey[850],
              fontSize: 18,
              fontWeight: FontWeight.normal),
          textAlign: TextAlign.start,
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
                  fontSize: 20,
                  color: Colors.orange[800].withOpacity(.76),
                ),
              ),
              subtitle: Text(
                '\n'
                'Es un aporte en dinero, que se otorga por una sola vez al hogar'
                'del beneficiario, sin cargo de restitución, que constituye un '
                'complemento del ahorro y/o los recursos que le permitan adquirir,'
                'construir en sitio propio, o mejorar una vivienda de interés'
                'social. Se entiende por solución de vivienda, el conjunto de'
                'operaciones que permite a un hogar disponer de habitación en '
                'condiciones sanitarias satisfactorias de espacio, servicios '
                'públicos y calidad de estructura, o iniciar el proceso para '
                'obtenerlas en el futuro. El Subsidio Familiar de Vivienda de'
                'Interés Social se podrá aplicar en las siguientes soluciones '
                'o tipos de vivienda.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _viviendaNueva(BuildContext context) {
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
                title: Text(
                  'Compra de vivienda nueva',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: colorNaranja,
                  ),
                ),
                subtitle: Text(
                  '\n'
                  'Es la modalidad en la cual el beneficiario de un subsidio'
                  'familiar adquiere una vivienda en el mercado dentro de'
                  'los planes elegibles conforme a los requisitos y'
                  'procedimientos establecidos, mediante acto jurídico'
                  'traslaticio del dominio y su posterior inscripción en '
                  'la Oficina de Registro de Instrumentos Públicos'
                  'competente. Deberán contemplar como mínimo, además '
                  'del lote urbanizado, una edificación conformada por '
                  'un espacio múltiple, cocina con mesón y lavaplatos, '
                  'lavadero, baño con sanitario, lavamanos, ducha y como'
                  'mínimo una alcoba; adicionalmente, podrán posibilitar'
                  'el desarrollo posterior de la vivienda para incorporar'
                  ' dos espacios independientes para alcobas. '
                  'En las viviendas unifamiliares se incluirá '
                  'el cerramiento de las mismas.'
                  '\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mejoramientoVivienda(BuildContext context) {
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
                title: Text('Mejoramiento de su Vivienda Actual',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: colorNaranja)),
                subtitle: Text(
                  '\n'
                  'Proceso por el cual el beneficiario del subsidio supera '
                  'una o varias de las carencias básicas de una vivienda '
                  'perteneciente a un desarrollo legal o legalizado, o a '
                  'una edificación, en aspectos tales como, su estructura '
                  'principal, cimientos, muros o cubiertas, carencia o '
                  'vetustez de redes eléctricas o de acueducto, y cuyo '
                  'desarrollo exige la consecución de permisos o licencias'
                  'previos ante las autoridades competentes. En este caso,'
                  'el título de propiedad de la vivienda a mejorar debe'
                  'estar inscrito en la Oficina de Registro de Instrumentos'
                  'Públicos a nombre de uno cualquiera de los miembros '
                  'del hogar postulante, quienes deben habitar en la vivienda.'
                  'En aquellos casos en que la totalidad de la vivienda '
                  'se encuentre construida en materiales provisionales, '
                  'se considerará objeto de un programa de construcción en sitio propio.'
                  '\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _constrSitioPropio(BuildContext context) {
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
                title: Text('Construcción en Sitio Propio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: colorNaranja)),
                subtitle: Text(
                  '\n'
                  'Modalidad en la cual el beneficiario del subsidio accede'
                  'a una vivienda de interés social, mediante la edificación'
                  'de la misma en un lote de su propiedad que puede ser un '
                  'lote de terreno, una terraza o una cubierta de losa. '
                  'En todo caso, el lote deberá estar ubicado en un '
                  'desarrollo legal o legalizado, y su título de propiedad'
                  'inscrito en la Oficina de Registro de Instrumentos '
                  'Públicos a nombre de uno cualquiera de los miembros del hogar postulante.'
                  '\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botonConcepCla(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
      child: FloatingActionButton.extended(
        label: Text('Conceptos clave en el subsidio'),
        icon: Icon(Icons.arrow_forward_rounded),
        backgroundColor: colorNaranja,
        onPressed: () {
          Navigator.pushNamed(context, 'conceptosClave');
        },
      ),
    );
  }
}
