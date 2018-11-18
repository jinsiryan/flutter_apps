
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    return _TestPageState();
  }
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("title"),
        ),
        body: Image.asset(
        'images/btn_video.png',
        ),

    );
  }
}
