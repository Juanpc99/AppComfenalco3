import 'package:app_comfenalco/Screens/Subsidios/conceptosClave_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/general_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/pagoSubsidios_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/requisitos_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/subsidiosAfiliados_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/subsidios_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/vigenciaSubsidio_page.dart';
import 'package:app_comfenalco/Screens/Welcome/login_pagee.dart';
import 'package:app_comfenalco/Screens/Welcome/welcome_screen.dart';
import 'package:app_comfenalco/Screens/codigo_EnviadoExito.dart';
import 'package:app_comfenalco/Screens/codigo_page.dart';
import 'package:app_comfenalco/Screens/cuentaRegistrada_page.dart';
import 'package:app_comfenalco/Screens/menu_principal.dart';
import 'package:app_comfenalco/Screens/mis_solicitudes_page.dart';
import 'package:app_comfenalco/Screens/nueva_contrase%C3%B1a_page.dart';
import 'package:app_comfenalco/Screens/perfil.dart';
import 'package:app_comfenalco/Screens/recuperar_contrase%C3%B1a_page.dart';
import 'package:app_comfenalco/Screens/registrarse/registrarse_screen.dart';
import 'package:app_comfenalco/Screens/todos_subsidios_page.dart';


import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => WelcomeScreen(),
    'registrar': (BuildContext context) =>RegistrarseScreen(), //RegistroPage(),
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
  };
}
