import 'package:flutter/material.dart';

import 'package:app_comfenalco/constantes.dart';

class SubsidioPage extends StatelessWidget {
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
          //iconTheme: IconThemeData(color: colorPrimarioClaro),
          title: Text(
            'Subsidio Familiar De Vivienda',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey[700].withOpacity(0.66),
              fontSize: 23,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 100,
        ),
        body: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            _introSubsidios(context),
            SizedBox(height: 10.0),
            _viviendaAfiliados(context),
            SizedBox(height: 10.0),
            _viviendaNOAfiliados(context),
            SizedBox(height: 10.0),
            _requisitosGenerales(context),
            SizedBox(height: 10.0),
            _vigenciaSubsidios(context),
            SizedBox(height: 10.0),
            _pagoSubsidios(context),
            _contactos(context),
            SizedBox(height: 70.0),
          ],
        ),
      ),
    );
  }

  Widget _introSubsidios(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/Postulate.png"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              //padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text(
                    'Haz parte de las familias beneficiadas con los subsidios de vivienda',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87,fontSize: 18)),
                subtitle: Text(
                    'Conoce como puedes postularte a subsidios de vivienda familiar.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'subsidioInfo');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Más Información...'),
                  color: colorAmarillo,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _viviendaAfiliados(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/v2.png"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text(
                    'Subsidio Familiar de Vivienda de Interés Social para afiliados',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87,fontSize: 18)),
                subtitle: Text(
                    'Conoce los tipos de subsidio que tenemos para tu familia.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'subsidioAfiliados');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Ver más...', style: TextStyle(fontSize: 15)),
                  color: colorNaranja,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _viviendaNOAfiliados(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/vsocial.jpg"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text(
                    'Subsidio Familiar de Vivienda para No Afiliados a Caja de Compensación Familiar',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87,fontSize: 18)),
                subtitle: Text(
                    'Si no te encuentras afiliado a una caja de compensación familiar podras recibir apoyo para los trámites correspondientes a la obtención del subsidio familiar de vivienda de interés social.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'subsidioNoAfiliados');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Ver más...', style: TextStyle(fontSize: 15)),
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _requisitosGenerales(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/cro.jpg"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text(
                    'Requisitos para solicitar el subsidio familiar de vivienda de interés social',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87,fontSize: 18)),
                subtitle: Text(
                    'Conozca los requisitos minimos para acceder al Subsidio de Vivienda Familiar.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'requisitos');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Ver más...', style: TextStyle(fontSize: 15)),
                  color: colorVerdeClaro,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _vigenciaSubsidios(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/vigencia.jpeg"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text('Vigencia de los subsidios',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87,fontSize: 18)),
                subtitle: Text(
                    'Tenga en cuenta el plazo para aplicar a los subsidios disponibles.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'vigenciaSub');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Ver más...', style: TextStyle(fontSize: 15)),
                  color: colorNaranja,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _pagoSubsidios(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/pago.jpg"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text('Pago del subsidio familiar de vivienda',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 18)),
                subtitle:
                    Text('Conozca como debe realizar el pago de su subsidio.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'pagoSub');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Ver más...', style: TextStyle(fontSize: 15)),
                  color: colorAmarillo,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactos(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: AssetImage("assets/images/call.jpg"),
              placeholder: AssetImage("assets/icons/icons8-spinner.gif"),
              fadeInDuration: Duration(milliseconds: 2000),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const ListTile(
                title: Text('Para mayor información contactenos',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 18,
                    ),
                ),
                subtitle: Text('Conozca los números para comunicarse con un asesor.'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'contacto');
                  }, // aqui va redireccionado a la otra vista
                  child: Text('Ver más...', style: TextStyle(fontSize: 15)),
                  color: colorVerdeClaro,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
