import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_coffeapp/models/users.dart';
import 'package:test_coffeapp/services/db.dart';


class AuthMethodes {

  final FirebaseAuth auth = FirebaseAuth.instance;



  //Create user object based on firebaseUser

  Stream<User?> get userChanged => auth.authStateChanges();

   User? get user => FirebaseAuth.instance.currentUser;



  /************anonym register***************************/
  Future Singanoym() =>
      auth.signInAnonymously().
      then((value) {
        print("resgister anonyme Created");
      }).
      catchError((onError) {
        print(onError.toString());
      });





  /*****************Register Methode***************/
  Future signup(String name ,String myemail, String mypassword) async {
    try {
      UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: myemail, password: mypassword);
      // return userCredential;

    User? user =userCredential.user;
      if(user != null){
        DBServices().userCollection.doc(user.uid).set({
          "email": myemail,
          "password": mypassword,
          "name":name,
        });
      }


    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
       
        // Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
      } else if (e.code == 'email-already-in-use') {
       print('The account already exists for that email.');
      }
    }
    catch (error) {
      print(error.toString());
    }
  }


  /*****************login Methodes***************/
  signin(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;

    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    catch (error) {
      print(error.toString());
    }
  }


  /*****************reset password  Methodes***************/
  resetPassword(String email) async {
    try{
      await auth.sendPasswordResetEmail(email: email);

    }catch(error){
      print(error.toString());
    }
  }

  /***************** Verification email Methodes ***************/
  verifyEmail(String email) async {

  }

  ///***************** logout Methodes ***************/
  Future logout() => auth.signOut();


}