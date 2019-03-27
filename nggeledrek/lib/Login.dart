import 'package:flutter/material.dart';

void main () => runApp(Login());

class Login extends StatelessWidget{
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
                          child:                         new TextFormField(
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
                          child:  new TextFormField(
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.blue[400],
                              border: Border.all(color: Colors.blue[300], width: 2.0),
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text('Masuk', style: TextStyle(fontSize: 18, color: Colors.white, ),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 75.0
                          ),
                          child:new InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: Center(
                              child: Text('Belum Punya Akun ? ', style: TextStyle(fontSize: 20, color: Colors.black, ),),
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