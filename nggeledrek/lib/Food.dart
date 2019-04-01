import 'package:flutter/material.dart';

void main() => runApp(Food());

class Food extends StatefulWidget {
  //final String foo;

  //const Food({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 250.0,
                width: double.infinity,
                color: Colors.blue[300],
                child: Align(
                  alignment: Alignment.center,
                child: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                height: 60.0,
                decoration: new BoxDecoration(
                  color: Colors.blueGrey,
                  border: new Border.all(
                    color: Colors.black54,
                    width: 4.0
                  ),
                  borderRadius: new BorderRadius.circular(12.0)
                ),
                child: new TextFormField(
                  decoration: null,
                ),
              ),
                )
              ),
              Column(
                children: <Widget>[
                  
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}