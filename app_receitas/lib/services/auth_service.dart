import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
 final FirebaseAuth _auth = FirebaseAuth.instance;
 User? usuario;
 bool isLoading = false;

 AuthService(){
  _authCheck();
 }

 _authCheck(){
  _auth.authStateChanges().listen((User? user) {
    usuario = (user == null) ? null : user;
    isLoading = false;
    notifyListeners();
  });
 }

 _getUser(){
  usuario = _auth.currentUser;
  notifyListeners();
 }

 registrar(String email, String senha) async {
  try {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: senha,
    );
    _getUser();
  } on FirebaseAuthException catch (e) {
    if(e.code == 'weak-password'){
      throw AuthException("A senha é muito fraca.");
    } else if(e.code == 'email-already-in-use'){
      throw AuthException("Este e-mail já está cadastrado.");
    }
  }
 }
 
 login(String email, String senha) async {
  try {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: senha,
    );
    _getUser();
  } on FirebaseAuthException catch (e) {
    if(e.code == 'user-not-found'){
      throw AuthException("E-mail não encontrado.");
    } else if(e.code == 'wrong-password'){
      throw AuthException("Senha incorreta. Tente novamente.");
    }
  }
 }

 logout() async {
  await _auth.signOut();
  _getUser();
  notifyListeners();
 }
}