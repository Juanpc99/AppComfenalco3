import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
// Ingresar con contraseña y correo
  Future<void> signIn(
      String email, String password, BuildContext context, String ruta) async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      ))
          .user;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.green,
                size: 40.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text('${user.email} inicio sesión'),
            ],
          ),
          duration: Duration(seconds: 5),
        ),
      );
      Navigator.pushReplacementNamed(context, ruta);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: Colors.red,
                size: 40.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text('Email o contraseña incorrecta'),
            ],
          ),
          duration: Duration(seconds: 5),
        ),
      );
    }
  }

  String correo() {
    String user = _auth.currentUser.email;
    return user;
  }

}
