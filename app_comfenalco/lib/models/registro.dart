// To parse this JSON data, do
//
//     final usuarios = usuariosFromJson(jsonString);

import 'dart:convert';

Usuarios usuariosFromJson(String str) => Usuarios.fromJson(json.decode(str));

String usuariosToJson(Usuarios data) => json.encode(data.toJson());

class Usuarios {
  int idUsuario;
  String nombre;
  String apellido;
  String fechaNacimiento;
  int idGnr;
  int numeroDocumento;
  String email;
  int idCiudad;
  int idPais;
  int idTipoDoc;
  String password;
  int idTipoUsr;
  String tokenCel;

  Usuarios({
    this.idUsuario,
    this.nombre = '',
    this.apellido = '',
    this.fechaNacimiento = '',
    this.idGnr = 0,
    this.numeroDocumento = 0,
    this.email = '',
    this.idCiudad = 0,
    this.idPais = 0,
    this.idTipoDoc = 0,
    this.password = '',
    this.idTipoUsr = 0,
    this.tokenCel = '',
  });

  factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
        idUsuario: json["idUsuario"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        fechaNacimiento: json["fechaNacimiento"],
        idGnr: json["idGenero"],
        numeroDocumento: json["numeroDocumento"],
        email: json["eMail"],
        idCiudad: json["idCiudad"],
        idPais: json["idPais"],
        idTipoDoc: json["idTipoDoc"],
        password: json["contraseÑa"],
        idTipoUsr: json["idTipoUsuario"],
        tokenCel: json["tokenCel"],
      );

  Map<String, dynamic> toJson() => {
        "idUsr": idUsuario,
        "nombre": nombre,
        "apellido": apellido,
        "fechaNacimiento": fechaNacimiento,
        "idGnr": idGnr,
        "numeroDocumento": numeroDocumento,
        "email": email,
        "idCiudad": idCiudad,
        "idPais": idPais,
        "idTipoDoc": idTipoDoc,
        "password": password,
        "idTipoUsr": idTipoUsr,
        "tokenCel": tokenCel,
      };
}
