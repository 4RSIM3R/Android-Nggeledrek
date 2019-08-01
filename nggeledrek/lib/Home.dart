import 'package:flutter/material.dart';
import 'CustomShapeClipper.dart';
import 'List.dart';
import 'blog.dart';
import 'Dirimu.dart';
import 'Mbayar.dart';
import 'Belanja.dart';

void main() => runApp(Home());
const Color firstColor = Color(0xff0083b0);
const Color secondColor = Color(0xff00b4db);
const TextStyle dropDownLabelStyle = TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle = TextStyle(color: Colors.black, fontSize: 20.0);
 ThemeData appTheme = ThemeData(
  primaryColor: Color(0xff0083b0),
      fontFamily: 'Oxygen'
);
bool isFlightSelected;
class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff0083b0),
        fontFamily: 'Oxygen'
      ),
      home: HomeSrceen(),
    );
  }
}

class HomeSrceen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          MyHomePage(),
          MyHomePageBottom
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 400.0,
              decoration: new BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height:30.0),
                  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Dirimu()
                              ));
                            },
                            child: Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                image: DecorationImage(
                                  image: AssetImage("assets/image/suku.jpg")
                                )
                              ),
                            ),
                          )
                        ],
                      ),
                  ),
                  SizedBox(height: 30.0,),
                  Text("Mau Berlibur\nKemana Kamu ?", style: TextStyle(fontSize: 28.0, color: Colors.white), textAlign: TextAlign.center,),
                  SizedBox(height:30.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: TextField(
                        controller: TextEditingController(text:"Banyuwangi"),
                        style: dropDownMenuItemStyle,
                        cursorColor: appTheme.primaryColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 16.0),
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(Icons.search, color: Colors.black,),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => list()
                            ))
                          },
                          child: Choice(Icons.crop_original, "Paket Wisata"),
                      ),
                      SizedBox(width: 20.0,),
                      InkWell(
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Belanja()
                          ))
                        },
                        child: Choice(Icons.shopping_basket, "Belanja",),

                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      );
  }
}

class Choice extends StatefulWidget {
  final IconData icon;
  final String text;

  Choice(this.icon, this.text);
@override
_ChoiceShipState createState() => _ChoiceShipState();
}
class _ChoiceShipState extends State<Choice>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration:BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0)
        )
      ) ,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20.0,
            color: Colors.white,
          ),
          SizedBox(width: 8.0,),
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0
            ),
          )
        ],
      ),
    );
  }

}

var viewAllStyle = TextStyle(fontSize: 16.0, color: appTheme.primaryColor);
var MyHomePageBottom = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Most visited", style: dropDownMenuItemStyle,),
        ],
      ),
    ),
    Container(
      height: 210.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: card
      ),
    )
  ],
);
List<PopulerCard> card = [
  PopulerCard("assets/image/alasPurwo.jpg", "Alas Purwo", "Hutan", "4.6"),
  PopulerCard("assets/image/pulauMerah.jpg", "Pulau Merah", "Pantai", "4.6"),
  PopulerCard("assets/image/KawahIjen.jpeg", "Kawah Ijen", "Gunung", "4.6"),
  PopulerCard("assets/image/tamanBaluran.jpg", "Taman Baluran", "Sabana", "4.6"),
];

class PopulerCard extends StatelessWidget{
  String imagePath, title, tag, like;
  PopulerCard(this.imagePath, this.title, this.tag, this.like);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            InkWell(
              onTap: () => {
                //Kecoh
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => BlogApp()
                ))
              },
              child: Container(
              height: 210.0,
              width: 160.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            ),
            
            Positioned(
                left: 0.0,
                bottom: 0.0,
                width: 160.0,
                height: 60.0,
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
              left: 10.0,
              right: 10.0,
              bottom: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                      ),
                      Text(
                        tag,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 14.0
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}

