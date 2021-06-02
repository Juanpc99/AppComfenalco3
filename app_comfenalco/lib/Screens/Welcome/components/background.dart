import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/diseno.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
        ],
      ),
    );
  }

  Widget fondo(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      height: 860,
      child: Image.asset(
        "assets/images/diseno.png",
        width: size.width * 1.13,
      ),
    );
  }

  Widget fondoRecuperarContra(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      left: -25,
      child: Image.asset(
        "assets/images/fondo2.png",
        width: size.width * 1.13,
      ),
    );
  }
}

class FondoRecuperarPassword extends StatelessWidget {
  final Widget child;
  const FondoRecuperarPassword({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          fondo(context),
          child,
        ],
      ),
    );
  }

  Widget fondo(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      left: -25,
      child: Image.asset(
        "assets/images/fondo2.png",
        width: size.width * 1.13,
      ),
    );
  }
}
