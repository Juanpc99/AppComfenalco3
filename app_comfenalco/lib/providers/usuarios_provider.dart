import 'dart:convert';

import 'package:app_comfenalco/constantes.dart';
import 'package:app_comfenalco/models/registro.dart';
import 'package:app_comfenalco/models/token.dart';
import 'package:app_comfenalco/services/auth.dart';

import 'package:http/http.dart' as http;

class UsuariosProvider {
  final String _url = url_api;
  AuthService _auth = AuthService();
  Future<bool> crearUsuario(Usuarios usuario) async {
    final Uri url = Uri.parse('$_url/UserRegistration');

    final resp = await http.post(url, body: usuariosToJson(usuario));

    // ignore: unused_local_variable
    final decodeData = json.decode(resp.body);

    //print(decodeData);

    return true;
  }

  Future<Usuarios> fetchPost() async {
    final String correo = _auth.correo().trim();
    final Uri url = Uri.parse('$url_api/getAllDataUserByCorreo?correo=$correo');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Usuarios.fromJson(json.decode(response.body));
    } else {
      throw Exception("Fallo");
    }
  }

  Future<void> actualizarToken(Token tokenCel) async {
    final Uri url = Uri.parse('$url_api/cambiarTokenCel');
    // ignore: unused_local_variable
    final response = await http.put(url, body: tokenToJson(tokenCel));
  }

  Future<void> actualizarUsuario(Usuarios usuario) async {
    final Uri url = Uri.parse('$url_api/actualizarUsuario');
    // ignore: unused_local_variable
    final response = await http.put(url, body: usuariosToJson(usuario));
  }
}
