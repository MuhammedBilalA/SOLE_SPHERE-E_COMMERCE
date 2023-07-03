import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sole_sphere/presentation/widgets/custom_snackbar.dart';

class Authentication {
  Authentication({required this.context});
  BuildContext context;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> registerWithEmailAndPassword(
      String email, String password, String name, String number) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      await _firestore.collection('user_details').doc(user!.uid).set({
        'email': email,
        'name': name,
        'phone Number': number,
      });
      // print('userCredential : ${userCredential}');
      return true;
    } on FirebaseException catch (e) {
      log('Error during registration: ${e.message}');
      snackbarFailed(text: "${e.message}", context: context);

      return false;
    }
  }

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('userCredential : $userCredential');
      return true;
    } on FirebaseException catch (e) {
      log('Error during sign-in: ${e.message}');
      snackbarFailed(text: "${e.message}", context: context);

      return false;
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      log('Error during sign-out: $e');
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      return userCredential;
    } catch (e) {
      log('Error signing in with Google: $e');
      return throw e;
    }
  }
}
