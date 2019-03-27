import 'package:flutter/material.dart';
import 'Guide.dart';
void main() => runApp(DetailApp());

var detail_text = "Nama Pulau Merah sendiri merujuk pada bukit kecil ditengah laut (tidak jauh dari pantai) yang memiliki tanah berwarna merah. Namun pulau tersebut tidak terlihat merah karena adanya pohon yang menyelimuti nya.";

class DetailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detailnya',
      theme: ThemeData(
          primaryColor: Color(0xff0083b0),
          accentColor: Color(0xff00b4db),
          backgroundColor: Colors.transparent,
          fontFamily: 'Oxygen'
      ),
      home: Detail(),
    );
  }
}

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text("Pantai Merah", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold,),),
                            SizedBox(width: 122.0,),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on, color: Color(0xff0083b0).withOpacity(0.9), ),
                            Text("Sumberagung, Banyuwangi", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                      SizedBox(height: 32.0,),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(detail_text, style: TextStyle(color: Colors.black87, fontSize: 17.0),),
                      ),
                      SizedBox(height: 32.0,),
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
                                            image: AssetImage("assets/image/pulauMerah.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
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
                                          image: AssetImage("assets/image/pulauMerah.jpg"),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
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
                            image: DecorationImage(image: AssetImage("assets/image/pulauMerah.jpg"),fit: BoxFit.cover)
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Guide()
            ))
          },
          child: Icon(Icons.keyboard_arrow_right, color: Colors.white,),
      ),
    );
  }
}