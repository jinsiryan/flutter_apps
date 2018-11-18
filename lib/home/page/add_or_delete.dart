
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChangeWidgetPage extends StatefulWidget {
  ChangeWidgetPage({Key key}) : super(key: key);

  @override
  _ChangeWidgetState createState() => new _ChangeWidgetState();
}

class _ChangeWidgetState extends State<ChangeWidgetPage> {
  // Default value for toggle
  bool toggle = true;
  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return new Text('Toggle One');
    } else {
      return new MaterialButton(onPressed: () {}, child: new Text('Toggle Two'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Update Text',
        child: new Icon(Icons.update),
      ),
    );
  }
}