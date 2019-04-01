import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Janji.dart';
import 'dart:async';
import 'main.dart';

void main() => ProfileApp();

class ProfileApp extends StatefulWidget {
  final String Kode;

  const ProfileApp({Key key, this.Kode}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<ProfileApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            StreamBuilder(
              stream: Firestore.instance.collection("Guide").snapshots(),
              builder: (context,snapshot){
                //Loading Checker
                if (!snapshot.hasData) return Center( child: CircularProgressIndicator(),);
                return new Guide(document: snapshot.data.documents, );
              },
            )
          ],
        ),
    );
  }
}

class Guide extends StatelessWidget {
  // String Jadwal;
  // DateTime _Tanggal = DateTime.now();
  //   Future<Null> _pilihTanggal(BuildContext context) async{
  //     final TanggalSekarang =await showDatePicker(
  //       context: context,
  //       initialDate: _Tanggal,
  //       firstDate: DateTime(2019),
  //       lastDate: DateTime(2100)
  //     );

  //     if (TanggalSekarang != null && TanggalSekarang != _Tanggal) {
  //       //print("Hore Berhasil 80% ${_Tanggal.toString()}");
  //       _Tanggal =TanggalSekarang;

  //     }
  //   }
  Guide({this.document});
  final List<DocumentSnapshot> document;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      itemCount: document.length,
      itemBuilder: (BuildContext context, int i){
        String Nama = document[i].data['Nama'];
        String Gambar = document[i].data['Image'];
        String Hp = document[i].data['Hp'];
        String Clocation = document[i].data['Clocation'];
        String GuideCode = document[i].data['GuideCode'];
        return Column(
          children: <Widget>[
            Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 45.0),
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      image: DecorationImage(
                          image: NetworkImage(Gambar),
                          fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(Nama, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 40.0,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.call, size: 35.0, color: Color(0xff0083b0),),
                                SizedBox(width: 20.0,),
                                Text(Hp, style: TextStyle(fontSize: 16.0, color: Colors.black87),)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, size: 35.0, color: Color(0xff0083b0),),
                          SizedBox(width: 20.0,),
                          Text(Clocation, style: TextStyle(fontSize: 16.0, color: Colors.black87),)
                        ],
                      )
                    ],
                  ),
                ),
                    Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.message, size: 35.0, color: Color(0xff0083b0),),
                          SizedBox(width: 20.0,),
                          Text("Melayani dengan senang hati\nkarena kepuasan pelanggan adalah\nhal terbaik bagi saya", style: TextStyle(fontSize: 16.0, color: Colors.black87),)
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 50.0,
                    horizontal: 25.0,
                  ),
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Janji(
                          Guidenya :Nama,
                          KodeGuidenya:GuideCode
                          
                        )
                      ))
                    },
                    child: Container(
                      child: Center(
                        child: Text("Lets Make A Journey", style: TextStyle(color: Colors.white, fontSize: 16, ),),
                      ),
                      height: 50.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                )
          ],
        );
      },
    );
  }
  
}