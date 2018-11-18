import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/home/model/func_item.dart';
import 'package:flutter_apps/home/model/func_manager.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //功能列表
  List<FuncItem> items;
  @override
  void initState() {
    super.initState();
    items = FuncManager.getItems();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("list"),
      ),
      body: new ListView.builder(itemCount: items.length,itemBuilder:(BuildContext context,int position){
            return getRow(items[position]);
      },)
    );

  }
  Widget getRow(FuncItem item){
    return new GestureDetector(
        child: new Padding(
        padding: new EdgeInsets.all(4),
        child: Container(height:50,child: new Text(item.title),)),
        onTap: (){
           print("onTap $item");
           Navigator.of(context).pushNamed(item.id);
        },
    );
  }
}
