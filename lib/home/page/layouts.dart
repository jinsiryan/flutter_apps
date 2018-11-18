import 'package:flutter/material.dart';

class LayoutsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LayoutsPageState();
  }
}

class _LayoutsPageState extends State<LayoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("title"),
        ),
        body: getRow()
    );
  }
  Widget getRow(){
   return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text('Row One'),
        new Text('Row Two'),
        new Text('Row Three'),
        new Text('Row Four'),
      ],
    );
  }
  Widget getColumn(){
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text('Column One'),
        new Text('Column Two'),
        new Text('Column Three'),
        new Text('Column Four'),
      ],
    );
  }

}