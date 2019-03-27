import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:async';
void main() => runApp(Daftar());

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _email;
  String _password;

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () => { print("Ini Splash Screen") });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(200.0)
                ),
                child: Container(
                  color: Colors.blue[700],
                  width: 170.0,
                  height: 70.0,
                ),
              ),
              Positioned(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200.0),
                  bottomRight: Radius.circular(200.0)
                ),
                child: Container(
                  color: Colors.blue[400],
                  width: 60.0,
                  height: 150.0,
                ),
              )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 80.0,
                      bottom: 15.0
                    ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/image/suitcase.png", width: 150, height: 150,)
                    ],
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Ngge', 
                      style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal, color: Colors.blue[400]),),
                      Text('ledrek', 
                      style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal, color: Colors.blue[200]),)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 40.0
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0
                          ),
                          child: new TextField(
                            onChanged: (value) => {
                              setState(() {
                                //tangkap value nya dan masukin ke String
                                _email = value;
                              })
                            },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Your Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            )
                          ),
                        ),
                        ),
                          Padding(
                          padding: EdgeInsets.only(
                            bottom: 15.0
                          ),
                          child:  new TextField(
                            onChanged: (value) => {
                              setState((){
                                _password = value;
                              })
                            },
                            obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8.0),
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: 'Your Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            )
                          ),
                        ),
                        ),
                        new InkWell(
                          // onTap: () => {
                          //   FirebaseAuth.instance.createUserWithEmailAndPassword(
                          //     email: _email,
                          //     password: _password
                          //   ).then((signedInUser){

                          //   }).catchError((e) {
                          //     print(e);
                          //   })
                          // },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.blue[400],
                              border: Border.all(color: Colors.blue[300], width: 2.0),
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text('Daftar', style: TextStyle(fontSize: 18, color: Colors.white, ),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 75.0
                          ),
                          child:new InkWell(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => MyApp()
                              ))
                            },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: Center(
                              child: Text('Sudah Punya Akun ? ', style: TextStyle(fontSize: 20, color: Colors.black, ),),
                            ),
                          ),
                        ),
                        )
                      ],
                    ),
                  )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
