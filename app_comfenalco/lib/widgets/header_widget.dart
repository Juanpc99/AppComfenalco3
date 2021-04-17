import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

Widget figDS(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Positioned(
    top: 0,
    left: 240,
    child: Image.asset(
      "assets/images/figDS.png",
      width: size.width * 0.5,
    ),
  );
}

Widget figDI(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Positioned(
    bottom: 0,
    left: 250,
    child: Image.asset(
      "assets/images/figDI.png",
      width: size.width * 0.5,
    ),
  );
}

Widget figII(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Positioned(
    bottom: 0,
    right: 250,
    child: Image.asset(
      "assets/images/figII.png",
      width: size.width * 0.5,
    ),
  );
}

Widget figIS(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Positioned(
    top: 0,
    right: 230,
    child: Image.asset(
      "assets/images/figIS.png",
      width: size.width * 0.5,
    ),
  );
}

class MyHeader extends StatefulWidget {
  final String image;
  final String textTop;
  final String textBottom;
  final double offset;
  const MyHeader(
      {Key key, this.image, this.textTop, this.textBottom, this.offset})
      : super(key: key);

  @override
  _MyHeaderState createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
