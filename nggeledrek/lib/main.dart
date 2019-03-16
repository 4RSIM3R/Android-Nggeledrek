import 'package:flutter/material.dart';
import 'Beranda.dart';
import 'dart:async';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nggeledrek',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
        Future.delayed(
          Duration(seconds: 5),
            (){
            Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => Beranda(),
              ),
            );
            }
        );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: Center(
          child: Image.asset('assets/image/splash.png'),
        ),
      ),
    );
  }
}
