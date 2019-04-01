import 'package:flutter/material.dart';
import 'main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'Home.dart';

class User {
  //Data dari Daftar Masuk Sini
  storeNewUser(user, context){
    Firestore.instance.collection("users").add({
      'Email' : user.email,
      'Uid' :user.uid
    }).then((value){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => Home()
      ));
    })
    .catchError((e){
      print("Ada Error Di : $e");
    });
  }
}