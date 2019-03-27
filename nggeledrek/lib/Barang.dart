import 'package:flutter/material.dart';
void main() => runApp(Barang());

class Barang extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {

          },
          color: Colors.black,
        ),
        title: Text("Oleh - Oleh", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.attach_money),
          onPressed: () => {

          },
          color: Colors.black,
        )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                //Margin Ke semuanya
                padding: EdgeInsets.all(5.0),
                height: 250.0,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 230.0,
                              //width nya 2/3 dari layar
                              width: MediaQuery.of(context).size.width -  MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/image/pulauMerah.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Positioned(
                              //Tulisan Overlaw image nya
                              left: 15.0,
                              top: 130.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Kopi Banyuwangi", style: TextStyle( fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold ),),
                                   Text("\$20", style: TextStyle( fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.normal ),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  
}