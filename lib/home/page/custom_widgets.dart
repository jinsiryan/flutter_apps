import 'package:flutter/material.dart';

class CustomWidgetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CustomWidgetPageState();
  }
}
class _CustomWidgetPageState extends State<CustomWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("title"),
        ),
        body: new CustomButton("Hello")
    );
  }
}
class CustomButton extends StatelessWidget {
  final String label;
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: () {}, child: new Text(label));
  }
}