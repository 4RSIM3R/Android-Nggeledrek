//192.168.1.32
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
void main() => Coba();

class Coba extends StatelessWidget{
  Future<List> getData() async{
    //Tangkap Datanya dari sini bang
    final response = await http.get("https://api.myjson.com/bins/u9mqu");
    //Kemabilikan Jadi decodenya JSON
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder<List>(
      future: getData(),
      builder: (context, snapshot){
        //Jika Ada Error
        if(snapshot.hasError) print(snapshot.error);
        return snapshot.hasData 
        //Kirim datanya disini
        ? new ItemList(list :snapshot.data) : 
        new CircularProgressIndicator();
      },
    ),
    );
  }
}

class ItemList extends StatelessWidget {
  //Tangkap datanya disini
  List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i){
        return Text(list[i]['Nama']);
      },
    );
  }
  
}