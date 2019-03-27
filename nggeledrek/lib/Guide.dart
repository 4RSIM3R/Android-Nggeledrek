import 'package:flutter/material.dart';

void main() => runApp(Guide());

class Guide extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text("Choose Your Guide", style: TextStyle(fontSize: 24, color: Colors.black),),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 50.0
            ),
            child: 
            Align(
              alignment: Alignment.center,
              child: Container(
              width: 180.0,
              height: 180.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/image/suku.jpg")
                )
              ),
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 35.0
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text("Mas Ilzam", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
  
}