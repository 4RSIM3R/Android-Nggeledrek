import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Home.dart';
import 'Event.dart';
void main() => runApp(Dirimu());

class Dirimu extends StatelessWidget {
    String _userId;
  void initState(){
    FirebaseAuth.instance.currentUser().then((user) {
      _userId = user.uid;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Home()
            ));
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue[200],),
          color: Colors.blue[200],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => Event()
            ));
            },
            icon: Icon(Icons.calendar_today, color: Colors.blue[200],),
            color: Colors.blue[200],
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: FlutterLogo(
          colors: Colors.blueAccent[300],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          StreamBuilder(
            stream: Firestore.instance.collection("Schedule").where('UserId', isEqualTo: _userId).snapshots(),
            builder: (context, snapshot){
              //Loading Indikatornya Disini
              if (!snapshot.hasData) return Center( child: CircularProgressIndicator(),);
              //Kirim Data nya disini
              return new ListBarang(document: snapshot.data.documents,);
            },
          )
        ],
      ),
    );
  }
}

class ListBarang extends StatelessWidget {
  ListBarang({this.document});
  final List<DocumentSnapshot> document;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: document.length,
      itemBuilder: (BuildContext context, int i){
        String KodeDest = document[i].data['KodeDest'];
        String Destinasi;
        if (KodeDest != "4L4SPRWO") {
          Destinasi = "Mantai Banyuwangi";
        }
        else{
          Destinasi = "Alas Purwo Journet";
        }
        String dari = document[i].data['dari'];
      return ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey
                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(Destinasi, style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.normal),),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(25.0, 50.0, 5.0, 20.0),
                          child: Text(dari, style: TextStyle(color: Colors.grey, fontSize: 24, fontWeight: FontWeight.w600),),
                        )
                      ],
                    ),
                    SizedBox(width: 40.0,),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: NetworkImage("https://image.flaticon.com/icons/png/512/119/119596.png")
                        )
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15.0,),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Belanja", style: TextStyle(color: Colors.blue[500], fontSize: 20),)
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
              Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.5
                        ),
                        child: Container(
                          height: 200.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Home()
                                      ));
                                    },
                                    child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.0),
                                        image: DecorationImage(
                                            image: NetworkImage("https://wisatajawatimur.xyz/wp-content/uploads/2017/05/kue-bagiak-min.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10.0, 140, 0.0, 0.0),
                                      child: Text("Njajan", style: TextStyle(color: Colors.white, fontSize: 20),),
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
                                          image: NetworkImage("https://media.travelingyuk.com/wp-content/uploads/2017/07/Banyuwangi.jpg"),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10.0, 140, 0.0, 0.0),
                                      child: Text("Buah", style: TextStyle(color: Colors.white, fontSize: 20),),
                                    )
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.5
                        ),
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
                                            image: NetworkImage("https://d2y8nrrb8y42iz.cloudfront.net/uploads/radarbanyuwangi/news/2018/05/31/spikoe-varian-oleh-oleh-khas-banyuwangi_m_78003.jpeg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10.0, 140, 0.0, 0.0),
                                      child: Text("Kekinian", style: TextStyle(color: Colors.white, fontSize: 20),),
                                    )
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
                                          image: NetworkImage("https://infobatik.id/wp-content/uploads/2018/01/batik-banyuwangi31.jpg"),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10.0, 140, 0.0, 0.0),
                                      child: Text("Pakaian", style: TextStyle(color: Colors.white, fontSize: 20),),
                                    )
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      )
        ],
      );
      }
    ); 
    
  }
}