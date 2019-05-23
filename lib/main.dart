import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';



void main() async{

  Map data=await getData();
  print("Answer:"+data["list"][0]["main"]["temp"].toString());
  
  //print("City Map Answer:"+data['city']['coord']['lon'].toString());
  //print(data["list"]);
  
//  print("Sunset Time:"+data['results']['sunset']);
//  print("sunrise:"+data['results']['sunrise']);

  runApp(new MaterialApp(
    home: new Scaffold(

      appBar: new AppBar(
        title: new Text("Weather App"),
        backgroundColor: Colors.deepOrange,
      ),

//  body: new Container(
//    child: new Stack(
//      children: <Widget>[
//
//        new Container(
//          height: 500.0,
//          width: 600.0,
//          decoration: new BoxDecoration(
//            image: DecorationImage(
//                image: NetworkImage("https://user-images.githubusercontent.com/20543298/57968944-13273200-7993-11e9-8344-86bb71c2c915.PNG"),
//            )
//          ),
//        ),
//        new Positioned(
//           bottom: 20.0,
//          left: 10.0,
//          child: new Container(
//            height: 200.0,
//            width: 300.0,
//            color: Colors.indigo,
//            child: new Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//
//                new Text("Sunrise Time:"+data["results"]["sunrise"],
//                style: TextStyle(
//                  fontSize: 22.0,
//                  color: Colors.white
//                ),
//                ),
//                new Text("Sunset Time:"+data["results"]["sunset"],
//                  style: TextStyle(
//                      fontSize: 22.0,
//                      color: Colors.white
//                  ),
//                ),
//
//
//              ],
//            ),
//          ),
//        )
//
//      ],
//    ),
//  ),


//      body: new ListView.builder(
//        itemCount: data.length,
//        itemBuilder: (BuildContext c,int index){
//          return Card(
//            elevation: 10.0,
//            child: new Column(
//              children: <Widget>[
//
//                new Text(data[index]["first_name"].toString()),
//                new Text(data[index]["email"].toString()),
//
//                new Image.network(
//                  data[index]["id"],
//                  height: 150.0,
//                  fit: BoxFit.cover,
//
//                )
//
//              ],
//            ),
//          );
//        }
//      ),
    ),

  ));
}
Future<Map>getData() async{

  //String api="https://api.coinmarketcap.com/v1/ticker/?limit=50";

  //var api="https://my.api.mockaroo.com/testfor.json?key=4c1fb6e0";
  
  //var api="https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400&date=today";

  var api="https://samples.openweathermap.org/data/2.5/forecast/hourly?id=524901&appid=b6907d289e10d714a6e88b30761fae22";

  var data=await http.get(api);
  var jsonData=json.decode(data.body);

  return jsonData;

}


