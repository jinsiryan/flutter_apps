import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_apps/home/route_manager.dart';

class SplashPage extends StatefulWidget{
  @override
    SplashState createState() {
      return SplashState();
    }
}
class SplashState extends State<SplashPage>{
   Timer _t;
  @override
    void initState() {
      super.initState();
    _t = new Timer(const Duration(milliseconds: 1500), () {
      print(" SplashState finsh");
      try {
        Navigator.of(context).pushNamed(HOME);
      } catch (e) {

      }
    });
    }

  @override
  void dispose() {
    _t.cancel();
    super.dispose();
  }
    @override
      Widget build(BuildContext context) {
        return new Material(
          color: Color.fromARGB(255, 0, 215, 198),
          child: Padding(
            padding: const EdgeInsets.only(
              top:250.0
            ),
            child: Column(
              children: <Widget>[
                new Text("flutter_apps",
                   style:TextStyle(color:Colors.white,fontSize:50.0,fontWeight:FontWeight.bold)
                )
              ],
            ),
          ),
          
        );
      }
}
