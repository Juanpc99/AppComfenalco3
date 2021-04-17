import 'package:flutter/material.dart';

class LogoComfenalco extends StatelessWidget {
  const LogoComfenalco({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.all(6.0),
        child: Image.asset("assets/images/LogoComfenalco.png",
            height: size.height * 0.3, width: size.width * 0.9));
  }
}
