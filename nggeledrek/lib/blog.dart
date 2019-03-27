import 'package:flutter/material.dart';
import 'detail.dart';
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
        backgroundColor: Colors.transparent,
        fontFamily: 'Oxygen'
      ),
      home: Blog(),
    );
  }
}

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/image/pulauMerah.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 20.0,
              top: 30.0,
              child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18.0)
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Route route = MaterialPageRoute(builder: (context) => Home());
                      Navigator.push(context, route);
                    },
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,)
                  )
              ),
            ),
            Positioned(
                left: 0.0,
                bottom: 0.0,
                width: 480,
                height: 180.0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.black.withOpacity(0.1)]
                      )
                  ),
                )
            ),
            Positioned(
              left: 45.0,
              bottom: 120.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Pantai Merah",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 50.0
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 2.0,
              left: 175.0,
              child: GestureDetector(
                  onTap: (){
                    Route route = MaterialPageRoute(builder: (context) => DetailApp());
                    Navigator.push(context, route);
                  },
                  child: Icon(Icons.keyboard_arrow_down, color: Colors.white,size: 60.0,)
              ),
            )
          ],
        ),
      ),
    );
  }
}
