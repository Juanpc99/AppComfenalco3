import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvaider {
  List<dynamic> opciones = [];

  _MenuProvaider() {
    cargarData();
  }

  Future <List<dynamic>>cargarData() async {
    final resp = await rootBundle.loadString('data/requisitos_opt.json');

    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvaider();
