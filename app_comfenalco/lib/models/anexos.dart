// To parse this JSON data, do
//
//     final anexosM = anexosMFromJson(jsonString);

import 'dart:convert';

AnexosM anexosMFromJson(String str) => AnexosM.fromJson(json.decode(str));

String anexosMToJson(AnexosM data) => json.encode(data.toJson());

class AnexosM {
    AnexosM({
        this.estado,
        this.observaciones,
        this.idSubsidio,
        this.idProgRequerimiento,
        this.nombreArchivo,
    });

    String estado;
    String observaciones;
    int idSubsidio;
    int idProgRequerimiento;
    String nombreArchivo;

    factory AnexosM.fromJson(Map<String, dynamic> json) => AnexosM(
        estado: json["estado"],
        observaciones: json["observaciones"],
        idSubsidio: json["idSubsidio"],
        idProgRequerimiento: json["idProgRequerimiento"],
        nombreArchivo: json["nombreArchivo"],
    );

    Map<String, dynamic> toJson() => {
        "estado": estado,
        "observaciones": observaciones,
        "idSubsidio": idSubsidio,
        "idProgRequerimiento": idProgRequerimiento,
        "nombreArchivo": nombreArchivo,
    };
}