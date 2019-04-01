import 'package:flutter/material.dart';
void main() => runApp(Barang());

class Barang extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => {

          },
          color: Colors.black,
        ),
        title: Text("Oleh - Oleh", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.attach_money),
          onPressed: () => {

          },
          color: Colors.black,
        )
        ],
      ),
      body: ListView(
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
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 155.0,
                                        left: 15.0
                                      ),
                                      child: Text("Ini Nama Barang", style: TextStyle(color : Colors.white, fontSize: 16, fontWeight: FontWeight.bold ),),
                                    ),
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
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 155.0,
                                        left: 15.0
                                      ),
                                      child: Text("Ini Nama Barang", style: TextStyle(color : Colors.white, fontSize: 16, fontWeight: FontWeight.bold ),),
                                    ),
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
                      )
            ],
          )
        ],
      ),
    );
  }
  
}