import 'package:flutter/material.dart';
import 'package:app_comfenalco/constantes.dart';

class RequisitosPostulacion extends StatelessWidget {
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
            'Requisitos para Postulación a Subsidio de vivienda',
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
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito9(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito10(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito11(context),
            Divider(
              color: Colors.black87,
              indent: 60.0,
              endIndent: 40.0,
            ),
            _requisito12(context),
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
        'Requisitos para la postulación al subsidio familiar de vivienda',
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
        title: Text(
          'Formulario de postulación debidamente diligenciado y suscrito por los miembros que conforman el hogar, con su información socioeconómica, indicación del jefe del hogar postulante y de la persona que, siendo parte del hogar, lo reemplazará si renunciara o falleciera, y mención de la Caja de Compensación Familiar y Fondo de Cesantías a los cuales se encuentren afiliados al momento de postular, si fuere el caso.',
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
        title: Text(
          'Certificado o carta de aprobación o pre aprobación de crédito para acreditar los recursos complementarios, emitida por una entidad financiera autorizada.',
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
        title: Text(
          'En el caso de recursos complementarios representados en ahorro programado, se deberá presentar el certificado expedido por la entidad donde están depositados e inmovilizados. Si se trata de ahorro programado contractual vinculado a evaluación crediticia favorable en una misma entidad, deberá presentarse certificación expedida por la misma, en la que conste el cumplimiento del ahorro programado contractual y la aprobación del crédito con el cual se adquirirá la vivienda. Si el ahorro previo está en cesantías deberá presentar certificado de inmovilización de estas con valor y vigencia de 30 días.  En todos los casos deberá tener registrada la fecha de inmovilización de dicho ahorro previo.',
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
        title: Text(
          'Cuando el ahorro previo esté representado en cuota inicial, debe anexar certificado de la constructora firmado por el revisor fiscal y el representante legal o certificación de fiducia. Ambos documentos, deben registrar el monto pagado, la fecha del primer pago y/o recibos de pago o consignaciones y con fecha de expedición no mayor a 30 días.',
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
        title: Text(
          'Cuando se trate de recursos complementarios originados en donaciones de Organizaciones No Gubernamentales y de entidades públicas o privadas nacionales o internacionales, o en el caso de aportes económicos solidarios en Organizaciones Populares de Vivienda, la disponibilidad deberá ser certificada por el Representante Legal y el Revisor Fiscal de la respectiva entidad. En el caso de recursos complementarios representados en terrenos, la certificación será el certificado de tradición con no más de treinta (30) días de expedido.',
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
        title: Text(
          'En el caso de subsidios o aportes municipales o departamentales, deberá presentar certificación de su existencia expedida por la autoridad local competente en cada caso.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }

  Widget _requisito7(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        title: Text(
          'Fotocopia de la cédula de ciudadanía de los mayores de 18 años.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }

  Widget _requisito8(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        title: Text(
          'Autorización para verificar la información suministrada para la postulación del subsidio y aceptación para ser excluido de manera automática del sistema de postulación al subsidio en caso de verificarse que la información aportada no corresponda a la verdad.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }

  Widget _requisito9(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        title: Text(
          'Certificado médico que acredite la discapacidad física o mental de alguno de los miembros del hogar, cuando fuere el caso.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }

  Widget _requisito10(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        title: Text(
          'Certificado original de ingresos de la empresa en donde labora, aplica para trabajadores dependientes.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }

  Widget _requisito11(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: ListTile(
        title: Text(
          'Certificación del contador público o certificación de prestación de servicios en caso de ser trabajador independiente.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }

  Widget _requisito12(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        title: Text(
          'Resolución pensional para los pensionados.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
        leading: Icon(
          Icons.check,
          color: colorNaranja,
        ),
      ),
    );
  }
}
