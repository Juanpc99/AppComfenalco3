// import 'package:app_comfenalco/services/auth.dart';
// import 'package:app_comfenalco/widgets/header_widget.dart';
// import 'package:app_comfenalco/widgets/redesSociales_widget.dart';
// import 'package:flutter/material.dart';

// import '../../constantes.dart';
// import 'package:app_comfenalco/validators/validators.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final AuthService _auth = AuthService();
//   final _fromKey = GlobalKey<FormState>();
//   String email = '', password = '';
//   String error = '';
//   final Validators validator = new Validators();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       resizeToAvoidBottomInset: false,
//       body: SingleChildScrollView(
//         child: Form(
//           key: _fromKey,
//           child: Column(
//             children: <Widget>[
//               ClipPath(
//                 clipper: MyClipper(),
//                 child: Container(
//                   height: 300,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       colors: [
//                         colorVerdeOscuro,
//                         colorVerdeLimon,
//                       ],
//                     ),
//                     image: DecorationImage(
//                       image: AssetImage("assets/images/LogoComfenalco.png"),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 500,
//                 width: 450,
//                 child: ListView(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
//                   children: <Widget>[
//                     SizedBox(height: 1),
//                     _colocarEmail(context),
//                     SizedBox(height: 5.0),
//                     _colocarContrasena(context),
//                     _botonEntrar(context),
//                     SizedBox(height: 20.0),
//                     _recuperarC(context),
//                     SizedBox(height: 20.0),
//                     redes(),
//                     SizedBox(height: 20.0),
//                     _noRegistrado(context),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.keyboard_arrow_left,
//         ),
//         backgroundColor: colorVerdeLimon.withOpacity(.76),
//         onPressed: () {
//           Navigator.pushNamed(context, '/');
//         },
//       ),
//     );
//   }

//   Widget _botonEntrar(BuildContext context) {
//     // final bloc = Provider.of(context);

//     return Container(
//       height: 80.0,
//       //width: 20.0,
//       padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
//       margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 2.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(45),
//         child: FlatButton(
//           onPressed: () async {
//             await _auth.signIn(email, password, context);
//           },
//           child: Text(
//             'Continuar',
//             style: TextStyle(
//                 fontWeight: FontWeight.normal,
//                 fontSize: 20,
//                 color: colorPrimarioClaro),
//           ),
//           color: colorPrimario,
//         ),
//       ),
//     );
//   }

//   Widget _colocarEmail(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40.0),
//       padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//       decoration: BoxDecoration(
//           color: colorVerdeLimon.withOpacity(.66),
//           borderRadius: BorderRadius.circular(29)),
//       child: TextFormField(
//         controller: _emailController,
//         validator: (val) {
//           if (validator.isEmail(val) == true) {
//             return null;
//           } else {
//             return 'Email invalido';
//           }
//         },
//         onChanged: (val) {
//           setState(() {
//             email = val;
//           });
//         },
//         style: TextStyle(color: colorPrimario),
//         obscureText: false,
//         keyboardType: TextInputType.emailAddress,
//         decoration: InputDecoration(
//             hintText: 'E-mail',
//             hintStyle: TextStyle(
//               color: colorPrimario,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//             ),
//             // errorText: 'Hola',
//             suffixIcon: Icon(
//               Icons.alternate_email,
//               color: colorPrimario,
//             ),
//             icon: Icon(
//               Icons.email,
//               color: colorPrimario,
//             )),
//       ),
//     );
//   }

//   Widget _colocarContrasena(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
//       padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
//       //width: 100000,
//       decoration: BoxDecoration(
//         color: colorVerdeLimon.withOpacity(.66),
//         borderRadius: BorderRadius.circular(29),
//       ),
//       child: TextFormField(
//         controller: _passwordController,
//         validator: (val) => val.length < 5 ? 'Minimo 6 caracteres' : null,
//         onChanged: (val) {
//           setState(() {
//             password = val;
//           });
//         },
//         obscureText: true,
//         // keyboardType: TextInputType.emailAddress,
//         decoration: InputDecoration(
//             hintStyle: TextStyle(
//               color: colorPrimario,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//             ),
//             hintText: 'Contraseña',
//             // errorText: 'Hola',
//             suffixIcon: Icon(
//               Icons.lock_open,
//               color: colorPrimario,
//             ),
//             icon: Icon(
//               Icons.lock,
//               color: colorPrimario,
//             )),
//       ),
//     );
//   }

//   Widget _recuperarC(BuildContext context) {
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//       GestureDetector(
//         child: Text(
//           '¿Olvidaste la contraseña?',
//           style:
//               TextStyle(color: colorVerdeOscuro2, fontWeight: FontWeight.bold),
//         ),
//         onTap: () {
//           Navigator.pushNamed(context, 'recuperar');
//         },
//       ),
//     ]);
//   }

//   Widget _noRegistrado(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "No tienes una cuenta? ",
//           style: TextStyle(
//               fontSize: 18,
//               color: colorVerdeOscuro2,
//               fontWeight: FontWeight.w600),
//         ),
//         GestureDetector(
//           onTap: () => Navigator.pushNamed(context, 'registrar'),
//           child: Text(
//             "Registrarse",
//             style: TextStyle(
//                 fontSize: 18, color: colorNaranja, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ],
//     );
//   }

//   // _login(LoginBloc bloc, BuildContext context) {
//   //   Navigator.pushReplacementNamed(context, 'menup');
//   // }
//   //
//   // bool isEmail(String em) {
//   //   String p =
//   //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//   //   RegExp regExp = new RegExp(p);

//   //   return regExp.hasMatch(em);
//   // }
// }
