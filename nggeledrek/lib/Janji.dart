import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Home.dart';
void main() => Janji();

class Janji extends StatefulWidget {
  final String Guidenya;
  final String KodeGuidenya;
  final String Kode;
  const Janji({Key key, this.Guidenya, this.KodeGuidenya, this.Kode }): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Janji> {
  String _userId;
  void initState(){
    FirebaseAuth.instance.currentUser().then((user) {
      _userId = user.uid;
    });
  }
  //Show Dialog Klo Berhasil transaksi
  void _berhasil(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Terimakasih!!!", style: TextStyle(color: Colors.blue, fontSize: 16.0),),
          content: Text("Terimakasih Telah Menggunakan layanan kami, Selamat Menikmati The Sunrise Of Java", style: TextStyle(color: Colors.black),),
          actions: <Widget>[
            FlatButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Home()
                ));
              },
            )
          ],
        );
      }
    );
  }
  //Yang Mau di masukkan firebase
  String KodeDest;
  String Keterangan;
  String Passengger;
  Icon IconKetemu = Icon(Icons.map);
  DateTime _dueDate =DateTime.now();
  DateTime _batasTanggalTerakhir =DateTime.now();
  String teksTanggal = "dd/mm/yyy";
  String _dateText = "dd/mm/yyy";
  //Tanggalan
  Future<Null> _selectDueDate(BuildContext context) async{
    final picked = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime(2019),
      lastDate: DateTime(2090)
    );

    if (picked != null) {
      setState(() {
        _dueDate =picked;
        _dateText = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  Future<Null> _pilihBatasTanggalTerakhir(BuildContext context) async{
    final picked = await showDatePicker(
      context: context,
      initialDate: _batasTanggalTerakhir,
      firstDate: DateTime(2019),
      lastDate: DateTime(2090)
    );

    if (picked != null) {
      setState(() {
        _batasTanggalTerakhir =picked;
        teksTanggal = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                   Padding(
                    padding: EdgeInsets.only(
                      top: 40.0,
                      bottom: 15.0
                    ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/image/suitcase.png", width: 150, height: 150,)
                    ],
                  ),
                  ),
                Align(
                  alignment: Alignment.center,
                  child:Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 40.0
                    ),
                    child: Column(
                      children: <Widget>[
                        Text("Terimakasih Sudah Memilih jasa saya untuk menjelajah secuil surga, Have A Good Journey", 
                        style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w400), textAlign: TextAlign.center,),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0
                          ),
                          child: new TextField(
                            onChanged: (value) => {
                              setState((){
                                Passengger =value;
                              })
                            },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: Icon(Icons.supervised_user_circle),
                            hintText: 'Mrs John Due',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            )
                          ),
                        ),
                        ),
                          Row(
                            children: <Widget>[
                              IconButton(icon: Icon(Icons.calendar_today), iconSize: 18, onPressed: () {
                                _selectDueDate(context);
                              },),
                              SizedBox(width: 0.0,),
                              Text(_dateText, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                              IconButton(icon: Icon(Icons.calendar_today), iconSize: 18, onPressed: () {
                                _pilihBatasTanggalTerakhir(context);
                              },),
                              SizedBox(width: 0.0,),
                              Text(teksTanggal, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                            ],
                          ),
                          Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0
                          ),
                          child:  new TextField(
                            onChanged: (value) => {
                              setState((){
                                Keterangan =value;
                              })
                            },
                            
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: Icon(Icons.location_on),
                            hintText: 'Jemput Saya di bandara',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            )
                          ),
                        ),
                        ),
                          Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0
                          ),
                          child:  new TextField(
                            onSubmitted: (value) => {
                              setState((){
                                KodeDest = value;
                              }),
                              Firestore.instance.collection("Destinasi")
                              .where('CodeDest', isEqualTo: KodeDest).getDocuments()
                              .then((value){
                                if (value.documents.length > 0) {
                                  print("Ok Ditemukan");
                                  setState(() {
                                   IconKetemu =Icon(Icons.check);
                                  });
                                }
                                else{
                                  print("Tidak Ditemukan");
                                  IconKetemu =Icon(Icons.cancel);
                                }
                              })
                              .catchError((e){
                                print("Ada Error Di : $e");
                              })
                            },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: IconKetemu,
                            hintText: 'Kode Paket Wisata',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            )
                          ),
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0
                          ),
                          child:new InkWell(
                          onTap: () => {
                            Firestore.instance.collection("Schedule").add({
                              'Guide' :widget.Guidenya,
                              'GuideCode':widget.KodeGuidenya,
                              'Keterangan' :Keterangan,
                              'Passangger':Passengger,
                              'dari':_dateText,
                              'sampai':teksTanggal,
                              'UserId':_userId,
                              'KodeDest':KodeDest
                            })
                            .then((value){
                              _berhasil();
                            })
                            .catchError((e){
                              print("Error e Ndek : $e");
                            })
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.blue[400],
                              border: Border.all(color: Colors.blue[300], width: 2.0),
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text('Wis Cawis ? ', style: TextStyle(fontSize: 18, color: Colors.white, ),),
                            ),
                          ),
                        ),
                        )

                      ],
                    ),
                  ),
                )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}