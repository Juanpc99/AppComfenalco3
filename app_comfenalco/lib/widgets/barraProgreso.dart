import 'package:app_comfenalco/constantes.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class BarraProgreso extends StatefulWidget {
  @override
  _BarraProgresoState createState() => _BarraProgresoState();
}

class _BarraProgresoState extends State<BarraProgreso>
    with SingleTickerProviderStateMixin {
  AnimationController animacionControl;

  @override
  void initState() {
    animacionControl = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    );
    animacionControl.addListener(() {
      setState(() {});
    });
    animacionControl.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final porcentaje = animacionControl.value * 40;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 95,
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: LiquidLinearProgressIndicator(
              borderRadius: 45,
              value: animacionControl.value,
              valueColor: AlwaysStoppedAnimation(colorPrimario),
              center: Text(
                '${porcentaje.toStringAsFixed(0)}%',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              direction: Axis.horizontal,
              backgroundColor: Colors.white,
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animacionControl.dispose();
    super.dispose();
  }
}
