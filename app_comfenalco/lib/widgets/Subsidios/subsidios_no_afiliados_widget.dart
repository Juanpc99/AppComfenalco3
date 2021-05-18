import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class InfoSubNoAfilWidget extends StatelessWidget {
  final String atras;
InfoSubNoAfilWidget({this.atras});
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
            'Subsidio de Vivienda para No Afiliados',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
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
            _afiliados(context),
            //_botonConcepCla(context),
            SizedBox(height: 80.0),
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
                'Subsidio Familiar de Vivienda de Interés Social para No Afiliados a Caja de Compensación Familiar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green[800].withOpacity(.76),
                ),
              ),
              subtitle: Text(
                '\n'
                'El Gobierno Nacional a través del Fondo Nacional de Vivienda, celebró contrato de encargo de gestión con las Cajas de Compensación Familiar de todo el País,  para que apoyen el trámite para la obtención del subsidio familiar de vivienda de interés social dirigido familias del sector informal e independiente que no cuenten con afiliación a Caja de Compensación Familiar.'
                '\n\n'
                'El Gobierno Nacional realizará la convocatoria y asignación de subsidios de vivienda de interés social de acuerdo al presupuesto y cronograma establecido anualmente. Las Cajas de Compensación realizarán la divulgación de la convocatoria, orientación a los postulantes y oferentes, postulación, certificación y revisión de la postulación, entrega de cartas de asignación de subsidio familiar de vivienda, recepción de recursos de reposición, revisión y verificación de los documentos, certificación de existencia y habitabilidad (compra de vivienda usada) para hacer efectivo el pago de los subsidios familiares de vivienda en todas sus modalidades.'
                '\n\n'
                'Los formularios de solicitud del subsidio sólo se entregarán por parte de las Cajas de Compensación Familiar cuando el Gobierno Nacional determine una fecha de apertura de la respectiva convocatoria. Los grupos familiares interesados podrán consultar permanentemente sobre la fecha de apertura de las convocatorias, en cualquiera de las oficinas de la Caja en todo el Departamento.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _botonConcepCla(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
      child: FloatingActionButton.extended(
        label: Text('Requisitos a Postulación'),
        icon: Icon(Icons.arrow_forward_rounded),
        backgroundColor: colorPrimario,
        onPressed: () {
          Navigator.pushNamed(context, 'reqPostulacion');
        },
      ),
    );
  }
}
