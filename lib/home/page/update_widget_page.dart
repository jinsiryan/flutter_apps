
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/home/base/base_frame.dart';

class UpdatePage extends BasePage {
  UpdatePage({Key key}) : super(key: key);

  @override
  _UpdatePagePageState createState() => new _UpdatePagePageState();
}

class _UpdatePagePageState extends State<UpdatePage> {
  // Default placeholder text
  String textToShow = "I Like Flutter";

  void _updateText() {
    setState(() {
      print("setState");
      // update the text
      textToShow = "Flutter is Awesome!";
    });
  }

  @override
  Widget build(BuildContext context) {
    print("UpdatePage");
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample update"),
      ),
      body: new Center(child: new Text(textToShow)),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: new Icon(Icons.update),
      ),
    );
  }
}