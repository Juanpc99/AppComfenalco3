// To parse this JSON data, do
//
//     final solicitudes = solicitudesFromJson(jsonString);

// To parse this JSON data, do
//
//     final solicitudesM = solicitudesMFromJson(jsonString);

import 'dart:convert';

SolicitudesM solicitudesMFromJson(String str) =>
    SolicitudesM.fromJson(json.decode(str));

String solicitudesMToJson(SolicitudesM data) => json.encode(data.toJson());

class SolicitudesM {
  SolicitudesM({
    this.estado = '',
    this.infoEstado = '',
    this.programa = '',
    this.idSubsidios,
  });

  String estado;
  String infoEstado;
  String programa;
  int idSubsidios;

  factory SolicitudesM.fromJson(Map<String, dynamic> json) => SolicitudesM(
        estado: json["estado"],
        infoEstado: json["infoEstado"],
        programa: json["programa"],
        idSubsidios: json["idSubsidios"],
      );

  Map<String, dynamic> toJson() => {
        "estado": estado,
        "infoEstado": infoEstado,
        "programa": programa,
        "idSubsidios": idSubsidios,
      };

}
