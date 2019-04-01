import 'package:flutter/material.dart';
import 'Dirimu.dart';
void main() => runApp(Gallery());
class Gallery extends StatefulWidget {
  //final String foo;

  //const Gallery({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Dirimu()
        ));
      },
      child:     Scaffold(
      body: ListView(
      shrinkWrap: true,
      children: <Widget>[
               Column(
        children: <Widget>[
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
                                            image: NetworkImage("https://cdns.klimg.com/newshub.id/news/2016/11/16/106664/511255-jajanan-tradisional-banyuwangi.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 15.0, bottom: 15.0 ),
                                        child: Text("Dummy Text", style: TextStyle(fontSize: 18.0, color: Colors.white),),
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
                                          image: NetworkImage("https://cdns.klimg.com/newshub.id/news/2016/11/16/106664/511255-jajanan-tradisional-banyuwangi.jpg"),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 10.0, bottom: 15.0 ),
                                        child: Text("Dummy Text", style: TextStyle(fontSize: 18.0, color: Colors.white),),
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
                          height: 300.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(image: NetworkImage("https://cdns.klimg.com/newshub.id/news/2016/11/16/106664/511255-jajanan-tradisional-banyuwangi.jpg"),fit: BoxFit.cover)
                          ),
                          child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 25.0, bottom: 25.0 ),
                                        child: Text("Dummy Text", style: TextStyle(fontSize: 24.0, color: Colors.white),),
                                      ),
                                    )
                        ),
                      ),
                                            Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          height: 150.0,
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
                                            image: NetworkImage("http://cdn2.tstatic.net/travel/foto/bank/images/nasi-tempong_20171027_092153.jpg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 7.5, bottom: 15.0 ),
                                        child: Text("Dummy Text", style: TextStyle(fontSize: 18.0, color: Colors.white),),
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
                                          image: NetworkImage("http://cdn2.tstatic.net/travel/foto/bank/images/nasi-tempong_20171027_092153.jpg"),
                                          fit: BoxFit.cover
                                      )
                                    ),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only( left: 15.0, bottom: 15.0 ),
                                        child: Text("Dummy Text", style: TextStyle(fontSize: 18.0, color: Colors.white),),
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
      ],
    ),
    ),
    );
  }
}