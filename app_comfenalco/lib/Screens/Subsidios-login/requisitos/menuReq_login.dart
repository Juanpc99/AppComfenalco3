import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvaiderLogin {
  List<dynamic> opciones = [];

  _MenuProvaiderLogin() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/requisitos2.json');

    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProviderLoginLogin = new _MenuProvaiderLogin();
