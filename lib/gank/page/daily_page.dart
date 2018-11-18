import 'dart:async';

import 'package:flutter/material.dart';

class DailyPage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return null;
    }
}

class DialyPageState extends State<DailyPage>{
  final String _url = "http://gank.io/api/day";
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: new AppBar(
        title: const Text("每日干货"),
        actions:actions(),
        
      ),
      );
    }
    List<Widget> actions(){
       return <Widget>[
          new Padding(padding: const EdgeInsets.all(4.0),
              child:new IconButton(
                icon: new Icon(Icons.calendar_today),
                onPressed: (){

                },
          ),
          )
        ];
    }

}