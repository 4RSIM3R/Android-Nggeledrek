import 'package:flutter/material.dart';

void main() => runApp(Belanja()); 

class Belanja extends StatefulWidget {
  //final String foo;
  //const Belanja({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Belanja> {
  // TabController tabController;
  // @override
  // void initState(){
  //   super.initState();
  //   tabController = TabController(vsync: this, length: 4);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(75.0)),
                  color: Colors.blue[400]
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 65.0, left: 25.0),
                child: Text("Good Morning", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 105.0, left: 25.0),
                child: Text("Enjoy The local taste", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w400 ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160, left: 25.0, right: 35.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(5.0),
                      topLeft:  Radius.circular(5.0),
                    )
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(14.0),
                      hintText: 'Try Rengginang',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),

                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only( left: 25.0, top: 25.0, bottom: 15.0, right: 25.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Tasty Food", style: TextStyle( fontSize: 18.0, color: Colors.grey ),),
                Text("View All", style: TextStyle( fontSize: 15.0, color: Colors.grey ),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Container(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: card
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 25.0, top: 25.0, bottom: 15.0, right: 25.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Tasty Food", style: TextStyle( fontSize: 18.0, color: Colors.grey ),),
                Text("View All", style: TextStyle( fontSize: 15.0, color: Colors.grey ),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Container(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: card
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) => BlogApp()
                // ))
              },
              child: Container(
              height: 180.0,
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
