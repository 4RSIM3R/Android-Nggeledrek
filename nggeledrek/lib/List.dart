import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'detail.dart';
import 'user_profile.dart' as Guide;
import 'Home.dart';
void main() => list();

  final imageList = [
    "https://www.nativeindonesia.com/wp-content/uploads/2018/08/pantai-pandawa-bali.jpg",
    "https://media.beritagar.id/2018-09/947b955b79bede9b72c98a68d688d330.jpg",
    "https://i.ytimg.com/vi/WqqQzkLKluc/maxresdefault.jpg"
  ];
  class list extends StatefulWidget {
  //final String foo;

  //const list({Key key, this.foo}): super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}
class _MyStatefulState extends State<list> {
  PageController _pageController;
  int currentPage = 0;
  @override
  void initState(){
    super.initState();
    _pageController = PageController(
      keepPage: true,
      initialPage: currentPage,
      viewportFraction: 0.8,
    );
  }
  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index){
          //Manggil Widget Biar enak klo looping
          return itemBuilder(index);
        },
        //Panggil Controller nya di sini mamang
        controller: _pageController,
        itemCount: 3,
        pageSnapping: true,
        onPageChanged: _onPageChanged,
      ),
    );
  }

  Widget itemBuilder(index){
    return Align(
      alignment: Alignment.topCenter,
      child: Container( 
        height: 600.0,
        margin: const EdgeInsets.only( left: 20.0, right: 20.0, bottom: 10.0 ),
        child: Material(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)
            )
          ),
          child: Image.network(imageList[index], fit: BoxFit.cover,),
        ),
       ),
      );
  }
  _onPageChanged(int  index){
    setState(() {
     currentPage = index; 
    });
  }
}

