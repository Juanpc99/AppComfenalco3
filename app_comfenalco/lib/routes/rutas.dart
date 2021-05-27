import 'package:app_comfenalco/Screens/Subsidios-login/contacto_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/general_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/pagoSubsidios_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/conceptosClave_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/reqGeneral_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/reqSitioPropio_Mejoramiento_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/reqZonaRural_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/requisitosMejoramientoV_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/requisitosPostulacion_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/requisitos/requisitos_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/subsidiosAfiliados_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/subsidiosNoAfiliados_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/subsidios_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios-login/vigenciaSubsidio_page_login.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/conceptosClave_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/reqGeneral_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/reqSitioPropio_Mejoramiento.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/reqZonaRural_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/requisitosMejoramientoV_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/requisitosPostulacion_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/Requisitos/requisitos_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/contacto_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/general_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/pagoSubsidios_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/subsidiosAfiliados_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/subsidiosNoAfiliados_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/subsidios_page.dart';
import 'package:app_comfenalco/Screens/Subsidios/vigenciaSubsidio_page.dart';
import 'package:app_comfenalco/Screens/Welcome/welcome_screen.dart';
import 'package:app_comfenalco/Screens/codigo_EnviadoExito.dart';
import 'package:app_comfenalco/Screens/codigo_page.dart';
import 'package:app_comfenalco/Screens/confirmar_contrase%C3%B1a_page.dart';
import 'package:app_comfenalco/Screens/construccion.dart';
import 'package:app_comfenalco/Screens/cuentaRegistrada_page.dart';
import 'package:app_comfenalco/Screens/login_pagee.dart';
import 'package:app_comfenalco/Screens/perfil/actualizacionE.dart';
import 'package:app_comfenalco/Screens/perfil/editarPerfil/editar_datos.dart';
import 'package:app_comfenalco/Screens/perfil/menu_principal.dart';
import 'package:app_comfenalco/Screens/perfil/notificaciones/infoNotificacion.dart';
import 'package:app_comfenalco/Screens/perfil/notificaciones/mis_solicitudes_page.dart';
import 'package:app_comfenalco/Screens/perfil/perfil.dart';
import 'package:app_comfenalco/Screens/recuperar_contrase%C3%B1a_page.dart';
import 'package:app_comfenalco/Screens/registrarse/registrarse_screen.dart';
import 'package:app_comfenalco/Screens/todos_subsidios_page.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => WelcomeScreen(),
    'login': (BuildContext context) => LoginPage(),
    'registrar': (BuildContext context) =>
        RegistrarseScreen(), //RegistroPage(),
    'subsidios': (BuildContext context) => SubsidioPage(),
    'subsidioInfo': (BuildContext context) => InfoGeneral(),
    'subsidioAfiliados': (BuildContext context) => InfoSubAfil(),
    'recuperar': (BuildContext context) => RecuperarPage(),
    'codigo': (BuildContext context) => CodigoPage(),
    'confirmar': (BuildContext context) => ConfirmarContrasena(),
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
    'pronto': (BuildContext context) => FondoConst(),
    'listaR': (BuildContext context) => ListaRequisitos(),
    'reqZonaRural': (BuildContext context) => RequisitosZonaR(),
    'reqMejoramiento': (BuildContext context) => RequisitosMejoramiento(),
    'reqPostulacion': (BuildContext context) => RequisitosPostulacion(),
    'reqSitioPyMejoramiento': (BuildContext context) =>
        RequisitosSitioPropioMejoramiento(),
    'subsidioNoAfiliados': (BuildContext context) => InfoSubNoAfil(),
    'contacto': (BuildContext context) => Contacto(),
    'actualizar': (BuildContext context) => ActualizarScreen(),
    'datosModificados': (BuildContext context) => ActualizacionDatos(),
    //'requisitosGenerales' : (BuildContext context) => RequisitosGenerales(),
    'conceptosClaveLogin': (BuildContext context) => ConcepClaLogin(),
    'requisitosLogin': (BuildContext context) => RequisitosLogin(),
    'reqPostulacionLogin': (BuildContext context) =>
        RequisitosPostulacionLogin(),
    'reqSitioPyMejoramientoLogin': (BuildContext context) =>
        RequisitosSitioPropioMejoramientoLogin(),
    'reqMejoramientoLogin': (BuildContext context) =>
        RequisitosMejoramientoLogin(),
    'reqZonaRuralLogin': (BuildContext context) => RequisitosZonaRLogin(),
    'subsidiosLogin': (BuildContext context) => SubsidioPageLogin(),
    'listaRLogin': (BuildContext context) => ListaRequisitosLogin(),
    'contactoLogin': (BuildContext context) => ContactoLogin(),
    'subsidioInfoLogin': (BuildContext context) => InfoGeneralLogin(),
    'pagoSubLogin': (BuildContext context) => PagoSubLogin(),
    'subsidioAfiliadosLogin': (BuildContext context) => InfoSubAfilLogin(),
    'subsidioNoAfiliadosLogin': (BuildContext context) => InfoSubNoAfilLogin(),
    'vigenciaSubLogin': (BuildContext context) => VigenciaSubLogin(),
    'infoSolicitud': (BuildContext context) => InfoSolicitud(),
  };
}
