import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(Kecoh());

class Kecoh extends StatefulWidget {
  //final String foo;

  //const Kecoh({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Kecoh> {
  var deskripsi = "Ada yang pernah berkunjung ke Banyuwangi? Wilayah Jawa timur paling ujung ini menjadi sebuah kawasan destinasi yang wajib untuk dikunjungi. Lantaran. Pesonanya yang luar biasa indahnya. Wilayah yang memiliki julukan sunrise of java ini tidak hanya indah saja. Melainkan esoktis apalagi, dengan keindahan festival tradisionalnya. Saking indahnya, ada salah satu kawasan yang dijuluki dengan “Little Africa In Java’ dari sini, apakah sobat native sudah tahu dimanakah objek wisata tersebut. Jika, masih belum tahu baiklah, mari kita bahas sebuah objek wisata di Banyuwangi dengan pesona menawan tepatnya di Taman Nasional Baluran. Taman nasional adalah sebuah kawasan yang digunakan khusus untuk melindungi berbagai macam ekosistem flora dan fauna. Di banyuwangi, kurang lebih ada 3 taman nasional yang berdiri dan dijadikan sebagai objek wisata unggulan. Salah satunya adalah Taman nasional Baluran yang mendapatkan julukan sebagai little Africa ini Java.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 230.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("http://tempatwisataindonesia.id/wp-content/uploads/2017/03/Hutan-Musim-Taman-Nasional-Baluran.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Home()
                            ));
                          },
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0
                  ),
                  child: Container(
                  child: Row(
                  children: <Widget>[
                    Text("Baluran National Park", style: TextStyle(fontSize: 28.0, color: Colors.black, fontWeight: FontWeight.w700),)
                  ],
                ),
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0
                  ),
                  child: Container(
                  child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on, size: 28, color: Colors.grey,),
                    SizedBox(width: 5.0,),
                    Text("Taman Nasional Baluran", style: TextStyle(fontSize: 18, color: Colors.grey, ),)
                  ],
                ),
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0
                  ),
                  child: Text(deskripsi, style: TextStyle(fontSize: 16, color: Colors.black, ),),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0
                  ),
                  child: Container(
                  child: Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          image: AssetImage("assets/image/suku.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                      padding: EdgeInsets.only(left: 10, ),
                      child: Text("M Ilzam Mukhaq", style: TextStyle(color: Colors.grey, fontSize: 16),),
                    ),
                      ],
                    )
                    
                  ],
                ),
                ),
                )
              ],
            )
        ],
      ),
    );
  }
}