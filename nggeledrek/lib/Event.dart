import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'Dirimu.dart';
void main() => runApp(Event());

class Event extends StatefulWidget {
  //final String foo;

  //const Event({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<Event> {
  var selectedDate = '18';
  var Harga = "750";

  @override
  Widget build(BuildContext context) {
    selectDate(date){
      setState(() {
       selectedDate =date; 
      });
    }
    switchColor(date){
      if (date ==selectedDate) {
        return Colors.blue.withOpacity(0.7);
      } else {
         return Colors.grey.withOpacity(0.2);
      }
    }
    switchContentColor(date){
      if (date == selectedDate) {
        return Colors.white;
      } else {
         return Colors.black;
      }
    }
     Widget getDate(int Date){
      return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: switchColor(Date),
        ),
        width: 60.0,
        height: 60.0,
        child: InkWell(
          onTap: (){
            selectDate(Date);
          },
          child: Center(
            child: Column(
              children: <Widget>[
                Text(Date.toString(), style: TextStyle(fontSize: 17.0, 
                color: switchContentColor(Date),
                fontWeight: FontWeight.bold),),
                Text("Wed", style: TextStyle(fontSize: 15.0, color: switchContentColor(Date)),)
              ],
            ),
          ),
        ),
      );
    }

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
                          image: NetworkImage("https://awsimages.detik.net.id/community/media/visual/2017/09/23/713b57f9-fdee-475d-a878-89c7db925fc4_169.jpg?w=780&q=90"),
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

                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite),
                          color: Colors.pink[500],
                          onPressed: (){

                          },
                        )
                      ],
                    ),
                    Positioned(
                      top: 190.0,
                      left: 15.0,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                        ],
                      ),
                    )
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
                    Text("Tour De Ijen", style: TextStyle(fontSize: 36.0, color: Colors.black, fontWeight: FontWeight.w700),)
                  ],
                ),
                ),
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
                    Icon(Icons.calendar_today, size: 28, color: Colors.grey,),
                    SizedBox(width: 5.0,),
                    Text("29, January 2019", style: TextStyle(fontSize: 18, color: Colors.grey, ),),
                  ],
                ),
                ),
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
                    Icon(Icons.timer, size: 24, color: Colors.grey,),
                    SizedBox(width: 5.0,),
                    Text("2 Days", style: TextStyle(fontSize: 16, color: Colors.grey, ),),
                    SizedBox(width: 40.0,),
                    Icon(Icons.timer, size: 24, color: Colors.grey,),
                    SizedBox(width: 5.0,),
                    Text("2 Days", style: TextStyle(fontSize: 16, color: Colors.grey, ),),
                  ],
                ),
                ),
                ),
              ],
            )
        ],
      ),
    );
  }
}