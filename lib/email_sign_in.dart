import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthSevice{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future <User> register(String email, String password) async{
    await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }
}