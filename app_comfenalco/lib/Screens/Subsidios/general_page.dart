import 'package:app_comfenalco/widgets/Subsidios/general_page_widget.dart';
import 'package:flutter/material.dart';

class InfoGeneral extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return InfoGeneralWidget(atras: 'subsidios',);
  }
}
