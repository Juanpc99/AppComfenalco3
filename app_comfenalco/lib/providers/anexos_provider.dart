import 'dart:convert';

import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/anexos.dart';

import 'package:http/http.dart' as http;

class AnexosProvider {
  Future<List<AnexosM>> cargarAnexos(int id) async {
    final Uri url = Uri.parse("$url_api/getAnexosPorIdSubsidio?idSubsidio=$id");
    final resp = await http.get(url);
    final List<dynamic> decodeData = json.decode(resp.body);
    final List<AnexosM> anexos = new List();
    print(decodeData);
    if (decodeData == null) return [];
    decodeData.forEach((soli) {
      final soliTemp = AnexosM.fromJson(soli);
      //soliTemp.idSubsidios = id;

      anexos.add(soliTemp);
    });
    print(anexos);
    return anexos;
  }
}
