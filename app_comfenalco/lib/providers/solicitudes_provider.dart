import 'dart:convert';

import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/solicitudes.dart';

import 'package:http/http.dart' as http;

class SolicitudesProvider {
  Future<List<SolicitudesM>> cargarSubsidios(String correo) async {
    final Uri url = Uri.parse("$url_api/getUserSubsidios?correo=$correo");
    final resp = await http.get(url);
    final List<dynamic> decodeData = json.decode(resp.body);
    // ignore: deprecated_member_use
    final List<SolicitudesM> solicitudes = new List();
    if (decodeData == null) return [];
    decodeData.forEach((soli) {
      final soliTemp = SolicitudesM.fromJson(soli);
      //soliTemp.idSubsidios = id;
      solicitudes.add(soliTemp);
    });
    print(solicitudes);
    return solicitudes;
  }

  Future<List<SolicitudesM>> cargarSubsidios2(
      String correo, String estado) async {
    final Uri url = Uri.parse("$url_api/getUserSubsidios?correo=$correo");
    final resp = await http.get(url);
    final List<dynamic> decodeData = json.decode(resp.body);
    // ignore: deprecated_member_use
    final List<SolicitudesM> solicitudes = new List();
    if (decodeData == null) return [];
    decodeData.forEach((soli) {
      final soliTemp = SolicitudesM.fromJson(soli);
      //soliTemp.idSubsidios = id;
      if (soliTemp.estado == estado) {
        solicitudes.add(soliTemp);
      }
    });
    print(solicitudes);
    return solicitudes;
  }

  
}
