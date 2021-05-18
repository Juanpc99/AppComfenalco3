import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class PagoSubWidget extends StatelessWidget {
  final String atras;
  PagoSubWidget({
    this.atras,
  });
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
            'Pago del Subsidio de Vivienda',
            style: TextStyle(
              color: Colors.grey[350],
              fontSize: 20,
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
            _nota1(context),
            _nota2(context),
            _nota3(context),
            _nota4(context),
            SizedBox(height: 90),
          ],
        ),
      ),
    );
  }

  Widget _titulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
      child: Text(
        'Pago del subsidio familiar de vivienda',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.orange[800].withOpacity(.76),
        ),
      ),
    );
  }

  Widget _nota1(BuildContext context) {
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
                  'El certificado de tradición y libertad del inmueble en original, con una vigencia no mayor a 30 días, que permitan evidenciar la adquisición de la vivienda por el hogar postulante (en todo caso, el oferente será responsable por el desarrollo de las actividades necesarias para la debida inscripción de la escritura pública en el folio de matrícula inmobiliaria correspondiente).',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nota2(BuildContext context) {
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
                  'Copia del documento que acredita la asignación del subsidio familiar de vivienda, con autorización de cobro por parte del beneficiario.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nota3(BuildContext context) {
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
                  'Certificado de existencia y recibo a satisfacción de la vivienda, en el que se especifique que la misma cumple con las condiciones señaladas en la postulación y en la asignación correspondiente, debidamente suscrito por el oferente y por el beneficiario del subsidio o por quien hubiese sido autorizado por éste para tales efectos.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nota4(BuildContext context) {
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
                  'El pago de los subsidios asignados por las Cajas de Compensación se realizarán en un plazo máximo de 15 días hábiles, una vez el hogar .beneficiado cumpla con los requisitos exigidos y estos sean verificados.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
                leading: Icon(Icons.check, color: colorNaranja),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
