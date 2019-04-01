import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
void main() => runApp(Mbayar());
class Mbayar extends StatefulWidget {
  //final String foo;

  //const Mbayar({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Mbayar> {
  String _userId;
  void initState(){
    FirebaseAuth.instance.currentUser().then((user) {
      _userId = user.uid;
    });
  }
  String kode = "Mana";
  @override
  Widget build(BuildContext context) {
    Future<String>futureString;
    void Scanku(){
      setState(() {
              futureString = new QRCodeReader()
               .setAutoFocusIntervalInMs(200) // default 5000
               .setForceAutoFocus(true) // default false
               .setTorchEnabled(true) // default false
               .setHandlePermissions(true) // default true
               .setExecuteAfterPermissionGranted(true) // default true
               .scan();
      });
      FutureBuilder<String>(
        future: futureString,
        builder: (context, snapshot){
          if (snapshot.data != null) {
            print(snapshot.data);
          } else {
            kode = 'Mana';
          }
        },
      );
    }
    return Scaffold(
      body: Center(
            child: new QrImage(
              data: _userId,
              size: 300.0,
              foregroundColor: Colors.blue,
            ),
          )
    );
  }
}