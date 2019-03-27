import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
void main () => runApp(Food());

class Food extends StatelessWidget {
  //Membuat list array Gambar
  final List<String> gambar = ["food1.jpg", "food2.jpg", "food4.jpg", "food5.jpg"];
  @override
  Widget build(BuildContext context) {
    //durasi animasi
    timeDilation = 5.0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //Menentukan Posisi dari mana gradient di mulai
            begin: FractionalOffset.topCenter,
            colors: [
              Colors.blue,
              Colors.blueAccent
            ]
          )
        ),
        child: new PageView.builder(
            //controller: new PageController(viewportFraction: 0.8),
            //Menghitung panjang nya dari array di atas
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int i){
                return new Padding(
                  child: new Material(
                    borderRadius: new BorderRadius.circular(10.0),
                    elevation: 8.0,
                  child: Stack(
                    //Stack Kayak Column
                    //Biar Gambar bisa full screen
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      //Effect Hero nya di sini
                      Hero(
                        tag: gambar[i],
                        child: Material(
                          
                          //Supaya Gambar Bisa di klik pakek inkwell
                          child: InkWell(
                            //ketika di klik
                            //Dia akan berpindah
                            onTap: () => Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder: (BuildContext context) => DetailFood(),
                              )
                            ),
                            child: Image.asset("assets/image/${gambar[i]}", fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0
                ),
                );
    
            },

        ),
      ),
    );
  }
}

class DetailFood extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordering Food'),
      ),
      body: Stack(
        children: <Widget>[
            
        ],
      ),
    );
  }
  
}