import 'package:app_comfenalco/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

// Crear objeto basado en firebase
  Users _userFromFirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

// Auth stream
  Stream<Users> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

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
          content: Text('${user.email} inicio sesión'),
        ),
      );
      Navigator.pushReplacementNamed(context, ruta);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email o contraseña incorrecta'),
        ),
      );
    }
  }
}
