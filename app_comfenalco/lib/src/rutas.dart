import 'package:app_comfenalco/Screens/Welcome/welcome_screen.dart';


import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => WelcomeScreen(),
  };
}
