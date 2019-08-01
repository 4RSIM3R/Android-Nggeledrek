import 'package:flutter/material.dart';
import 'user_profile.dart';
import 'List.dart';
void main() => runApp(DetailApp());

var detail_text = "Nama Pulau Merah sendiri merujuk pada bukit kecil ditengah laut (tidak jauh dari pantai) yang memiliki tanah berwarna merah. Namun pulau tersebut tidak terlihat merah karena adanya pohon yang menyelimuti nya.";

class DetailApp extends StatefulWidget {
  final String foo;
  final String Nama;
  final String Deskripsi;
  final String Gambar1;
  final String Gambar2;
  final String Gambar3;
  final String Gambar4;
  final String Lokasi;
  final String CodeDest;
  final String Tujuan1;
  final String Tujuan2;
  final String Tujuan3;
  final String Tujuan4;
  final String Hotel;
  final String Gambar5;
  final String Harga;
  //Cara Bind data dari yang di kirim dari list
  const DetailApp({Key key, this.foo, 
  this.Nama, this.Gambar1, this.Gambar2, 
  this.Gambar3, this.Deskripsi, this.Lokasi, 
  this.CodeDest, this.Tujuan1, this.Tujuan2, this.Tujuan3, 
  this.Tujuan4, this.Hotel, this.Gambar4, this.Gambar5, this.Harga}): super(key: key);

  @override
  //Nama Class Dibawahnya
  Promosi createState() =>  Promosi();
}

class  Promosi extends State<DetailApp> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onDoubleTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => list()
              ));
            },
            child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(
                             children: <Widget>[
                            Text(widget.Nama, style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold,),),
                            SizedBox(width: 75.0,),
                             ],
                           ),
                         ),
                         SizedBox(height: 16.0,),
                        Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          children: <Widget>[
                            //Icon(Icons.monetization_on, color: Color(0xff0083b0).withOpacity(0.9), ),
                            Text("Price : ${widget.Harga}", style: TextStyle(color: Colors.grey, fontSize: 18.0),)
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            children: <Widget>[
                              Text(widget.Deskripsi, style: TextStyle(color: Colors.black87, fontSize: 17.0),),
                            ],
                          )
                      ),
                      SizedBox(height: 8.0,),
                      SizedBox(height: 18.0,),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          height: 200.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        image: DecorationImage(
                                            image: NetworkImage(widget.Gambar1),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 15.0, bottom: 15.0 ),
                                        child: Text(widget.Tujuan1, style: TextStyle(fontSize: 18.0, color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                          image: NetworkImage(widget.Gambar2),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 10.0, bottom: 15.0 ),
                                        child: Text(widget.Tujuan2, style: TextStyle(fontSize: 18.0, color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 200.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(image: NetworkImage(widget.Gambar4),fit: BoxFit.cover)
                          ),
                          child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 25.0, bottom: 25.0 ),
                                        child: Text(widget.Tujuan3, style: TextStyle(fontSize: 24.0, color: Colors.white),),
                                      ),
                                    )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          height: 200.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        image: DecorationImage(
                                            image: NetworkImage(widget.Gambar5),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 7.5, bottom: 15.0 ),
                                        child: Text(widget.Tujuan4, style: TextStyle(fontSize: 18.0, color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                          image: NetworkImage(widget.Gambar3),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 15.0, bottom: 15.0 ),
                                        child: Text(widget.Hotel, style: TextStyle(fontSize: 18.0, color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      )
                      ],
                     ),
                  )
                ],
              )
            ],
          ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => ProfileApp(
                Kode: widget.CodeDest,
              )
            ))
          },
          child: Icon(Icons.keyboard_arrow_right, color: Colors.white,),
      ),
      
      );
  }
}