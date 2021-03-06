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
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.start,
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
                  'El certificado de tradici??n y libertad del inmueble en original, con una vigencia no mayor a 30 d??as, que permitan evidenciar la adquisici??n de la vivienda por el hogar postulante (en todo caso, el oferente ser?? responsable por el desarrollo de las actividades necesarias para la debida inscripci??n de la escritura p??blica en el folio de matr??cula inmobiliaria correspondiente).',
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
                  'Copia del documento que acredita la asignaci??n del subsidio familiar de vivienda, con autorizaci??n de cobro por parte del beneficiario.',
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
                  'Certificado de existencia y recibo a satisfacci??n de la vivienda, en el que se especifique que la misma cumple con las condiciones se??aladas en la postulaci??n y en la asignaci??n correspondiente, debidamente suscrito por el oferente y por el beneficiario del subsidio o por quien hubiese sido autorizado por ??ste para tales efectos.',
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
                  'El pago de los subsidios asignados por las Cajas de Compensaci??n se realizar??n en un plazo m??ximo de 15 d??as h??biles, una vez el hogar .beneficiado cumpla con los requisitos exigidos y estos sean verificados.',
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
