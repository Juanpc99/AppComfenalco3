// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.email = '',
    this.tokenCel = '',
  });

  String email;
  String tokenCel;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        email: json["email"],
        tokenCel: json["tokenCel"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "tokenCel": tokenCel,
      };
}
