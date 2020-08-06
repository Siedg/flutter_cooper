import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cooper/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Faz o login de forma anônima
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  // Converte o usuário de rotorno do Firebase em um Objeto User
  _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(id: user.uid) : null;
  }

  // Retorna mudanças na autenticação do usuário
  Stream<User> get user {
    return _auth.onAuthStateChanged
        //.map(_userFromFirebaseUser);
        .map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}