import 'package:app_comfenalco/Screens/Welcome/welcome_screen.dart';
import 'package:app_comfenalco/Screens/codigo_page.dart';
import 'package:app_comfenalco/Screens/cuentaRegistrada_page.dart';
import 'package:app_comfenalco/Screens/menu_principal.dart';
import 'package:app_comfenalco/Screens/mis_solicitudes_page.dart';
import 'package:app_comfenalco/Screens/nueva_contrase%C3%B1a_page.dart';
import 'package:app_comfenalco/Screens/perfil.dart';
import 'package:app_comfenalco/Screens/recuperar_contrase%C3%B1a_page.dart';
import 'package:app_comfenalco/Screens/registrarse/registrarse_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:app_comfenalco/Screens/registro_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/subsidios_page.dart';
import 'package:app_comfenalco/services/auth.dart';

//import 'package:app_comfenalco/constantes.dart';

import 'package:app_comfenalco/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Screens/Subsidios/ConceptosClave_page.dart';
import 'Screens/Subsidios/general_page.dart';
import 'Screens/Subsidios/pagoSubsidios_page.dart';
import 'Screens/Subsidios/requisitos_page.dart';
import 'Screens/Subsidios/subsidiosAfiliados_page.dart';
import 'Screens/Subsidios/vigenciaSubsidio_page.dart';
import 'Screens/login_pagee.dart';
import 'Screens/codigo_EnviadoExito.dart';
import 'Screens/todos_subsidios_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return StreamProvider.value(
        value: AuthService().user,
        // initialData: null,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // lenguajes soportados en la app
          supportedLocales: [
            const Locale('en', 'US'), // English
            const Locale('es', 'ES'), // Spanish
          ],
          title: 'Bienvenidos a App mis solicitudes',
          initialRoute: '/',
          routes: {
            '/': (BuildContext context) => WelcomeScreen(),
            'login': (BuildContext context) => LoginPage(),
            'registrar': (BuildContext context) =>
                RegistrarseScreen(), //RegistroPage(),
            'subsidios': (BuildContext context) => SubsidioPage(),
            'subsidioInfo': (BuildContext context) => InfoGeneral(),
            'subsidioAfiliados': (BuildContext context) => InfoSubAfil(),
            'recuperar': (BuildContext context) => RecuperarPage(),
            'codigo': (BuildContext context) => CodigoPage(),
            'nuevac': (BuildContext context) => NuevaContrasena(),
            'conceptosClave': (BuildContext context) => ConcepCla(),
            'requisitos': (BuildContext context) => Requisitos(),
            'pagoSub': (BuildContext context) => PagoSub(),
            'vigenciaSub': (BuildContext context) => VigenciaSub(),
            'menup': (BuildContext context) => MenuPage(),
            'missolicitudes': (BuildContext context) => MisSolicitudesPage(),
            'perfil': (BuildContext context) => PerfilPage(),
            'codigoEnviado': (BuildContext context) => EnvioExitoso(),
            'cuentaCreada': (BuildContext context) => CuentaRegistrada(),
            'todosSubsidios': (BuildContext context) => TodosSubsidios(),
            //'requisitosGenerales' : (BuildContext context) => RequisitosGenerales(),
          },
          theme: theme(),
          
        ));
  }

}
