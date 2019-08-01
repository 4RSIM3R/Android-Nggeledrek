import 'package:flutter/material.dart';
import 'user_profile.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'Home.dart';
void main() {
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff0083b0),
        accentColor: Colors.black,
        backgroundColor: Colors.transparent
      ),
      home: Blog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  var deskripsi = "Flutter adalah teknologi untuk membangun suatu mobile apps yang dibuat oleh Google. Dengan menggunakan Flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: double.infinity,
              child: Image.asset("assets/image/tamanBaluran.jpg", fit: BoxFit.cover,)
            ),
            Padding(
              padding: EdgeInsets.all(28.0),
              child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Some Places", style: TextStyle( fontSize: 26.0, fontWeight: FontWeight.bold ),),
                  ],
                ),
                SizedBox(height: 16.0,),
                Row(
                  children: <Widget>[
                    Icon(Icons.place,color: Colors.blue[500], size: 24.0,),
                    Text("Di Suatu Tempat", style: TextStyle( color: Colors.grey, fontSize: 16.0 ),)
                  ],
                ),
                SizedBox(height: 16.0,),
                Text(deskripsi, style: TextStyle( fontSize: 14.0, color: Colors.black87 ),),
                SizedBox( height: 16.0, ),
                Row(
                  children: <Widget>[
                    Text("Best Shoot In This week", style: TextStyle( color: Colors.grey ),)
                  ],
                ),
                SizedBox( height: 14.0, ),
                Container(
                  height: 200.0,
                  child: 
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                              )
                            ),
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                                    )
                                  ),
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage("https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
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
                                    padding: EdgeInsets.all(2.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage("https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                                        )
                                      ),
                                      height: double.infinity,
                                      width: double.infinity,
                                    ),
                                ))
                              ],
                            ),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.0,),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Enjoy It From"),
                          Text("\$150.0", style: TextStyle( fontSize: 22.0, fontWeight: FontWeight.w500 ),)
                        ],
                      ),
                      SizedBox(width: 110.0,),
                      RaisedButton(
                        onPressed: () => {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ProfileApp(
                              Kode: 'Contoh',
                            )
                          ))
                        },
                        color: Colors.blue,
                        child: Text("Book Now", style: TextStyle( color: Colors.white ),),
                      )
                    ],
                  ),
                )
              ],
            ),
            )
          ],
        ),
        )],
      )
      );
    
  }
}
