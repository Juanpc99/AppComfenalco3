import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/src/rutas.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app_comfenalco/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'providers/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        // lenguajes soportados en la app
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('es', 'ES'), // Spanish
        ],
        title: 'Bienvenidos a App mis solicitudes',
        initialRoute: rutaInicial(),
        routes: getAplicationRutes(),
        theme: theme(),
      ),
    );
  }

  String rutaInicial() {
    if (_auth.correo() == '') {
      return '/';
    } else {
      return 'menup';
    }
  }
}
