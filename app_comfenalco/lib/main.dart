import 'package:app_comfenalco/providers/ui_provider.dart';
import 'package:app_comfenalco/routes/rutas.dart';
import 'package:app_comfenalco/services/auth.dart';
import 'package:app_comfenalco/services/push_notifications_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app_comfenalco/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await PushNotificationsService.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthService _auth = AuthService();
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    //Context
    PushNotificationsService.messagesStream.listen((message) {
      // print('My app: $message');
      navigatorKey.currentState
          ?.pushNamed('missolicitudes', arguments: message);
      final snackBar = SnackBar(content: Text(message));
      messengerKey.currentState?.showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
      ],
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
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: messengerKey,
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
