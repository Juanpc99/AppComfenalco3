// To parse this JSON data, do
//
//     final anexosM = anexosMFromJson(jsonString);

import 'dart:convert';

AnexosM anexosMFromJson(String str) => AnexosM.fromJson(json.decode(str));

String anexosMToJson(AnexosM data) => json.encode(data.toJson());

class AnexosM {
    AnexosM({
        this.idAnexo,
        this.idSubsidios,
        this.idPrograma,
        this.estado,
        this.observaciones,
        this.documento,
        this.programa,
        this.requerimiento,
    });

    int idAnexo;
    int idSubsidios = 0;
    int idPrograma = 0;
    String estado ="";
    String observaciones ="";
    String documento ="";
    String programa ="";
    String requerimiento="";

    factory AnexosM.fromJson(Map<String, dynamic> json) => AnexosM(
        idAnexo: json["idAnexo"],
        idSubsidios: json["idSubsidios"],
        idPrograma: json["idPrograma"],
        estado: json["estado"],
        observaciones: json["observaciones"],
        documento: json["documento"],
        programa: json["programa"],
        requerimiento: json["requerimiento"],
    );

    Map<String, dynamic> toJson() => {
        "idAnexo": idAnexo,
        "idSubsidios": idSubsidios,
        "idPrograma": idPrograma,
        "estado": estado,
        "observaciones": observaciones,
        "documento": documento,
        "programa": programa,
        "requerimiento": requerimiento,
    };
}
