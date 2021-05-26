// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.idUsr = 0,
    this.tokenCel = '',
  });

  int idUsr;
  String tokenCel;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        idUsr: json["idUsr"],
        tokenCel: json["tokenCel"],
      );

  Map<String, dynamic> toJson() => {
        "idUsr": idUsr,
        "tokenCel": tokenCel,
      };
}
