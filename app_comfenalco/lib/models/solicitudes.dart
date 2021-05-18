// To parse this JSON data, do
//
//     final solicitudes = solicitudesFromJson(jsonString);

import 'dart:convert';

Solicitudes solicitudesFromJson(String str) => Solicitudes.fromJson(json.decode(str));

String solicitudesToJson(Solicitudes data) => json.encode(data.toJson());

class Solicitudes {
    Solicitudes({
        this.estado = '',
        this.infoEstado = '',
        this.programa = '',
        this.idSubsidios,

    });

    String estado;
    String infoEstado;
    String programa;
    int idSubsidios;

    factory Solicitudes.fromJson(Map<String, dynamic> json) => Solicitudes(
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
