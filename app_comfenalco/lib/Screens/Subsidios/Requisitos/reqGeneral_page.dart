import 'package:flutter/material.dart';

class ListaRequisitos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/constr2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(),
    );
  }
}
