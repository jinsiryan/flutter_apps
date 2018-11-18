import 'package:flutter/material.dart';
import 'package:flutter_apps/gank/page/daily_page.dart';
class GankHomePage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return GankHomePageState();
  }


}
class GankHomePageState extends State<GankHomePage>{
  int _currtentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildNetBody(),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currtentIndex,
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),title: Text("每日干货")
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),title: Text("每日干货")
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),title: Text("每日干货")
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),title: Text("每日干货")
         ),
       ],
       type:BottomNavigationBarType.fixed,
       onTap: (int selected){
         setState(() {
                    this._currtentIndex = selected;
            });
       },
      ),);
  }
  Widget _buildNetBody(){
     final List<Widget> transitions = <Widget>[];
     transitions.add(new DailyPage());
     transitions.add(new DailyPage());
     transitions.add(new DailyPage());
     transitions.add(new DailyPage());
     return new IndexedStack(
       children: transitions,
       index: _currtentIndex,
     );
  }
}