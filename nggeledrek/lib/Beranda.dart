import 'package:flutter/material.dart';

void main () => runApp(Beranda());

class Beranda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      //Cara Membuat App Bar Di flutter Begini
      appBar: AppBar(
        //Cara hilangkan Back Arrow
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: new Center(
          child: new Text('Madhyang', style: TextStyle(color: Colors.black),),
        ),
      ),
      //Body Nya Bang !!! Pakek Container Yahh
      body: Container(
        //Ini Hanya menampung satu child ngakalinnya tambah row/column dalamnya child +in children
        child: new Column(
          children: <Widget>[
            Image.network('http://4.bp.blogspot.com/-4ncGWg5Z5Aw/TjThM4b6WhI/AAAAAAAAAfk/by3DCICiamY/s1600/200810262108282.jpg',
            scale: 3.0,)
          ],
        ),
      ),
    );
  }
  
}

 