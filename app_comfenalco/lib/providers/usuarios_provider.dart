import 'dart:convert';

import 'package:app_comfenalco/models/registro.dart';

import 'package:http/http.dart' as http;

class UsuariosProvider {
  final String _url = 'http://10.0.2.2:8000';

  Future<bool> crearUsuario(Usuarios usuario) async {
    final Uri url = Uri.parse('$_url/UserRegistration');

    final resp = await http.post(url, body: usuariosToJson(usuario));

    final decodeData = json.decode(resp.body);

    print(decodeData);

    return true;
  }

  
}
