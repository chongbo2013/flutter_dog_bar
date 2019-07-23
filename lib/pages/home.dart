import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dog_bar/utils/router.dart' as router;
import 'about.dart';
import 'dogbar.dart';
import 'dogcollection.dart';

//主页
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  int pageIndex=0;
  @override
  void initState() {
    super.initState();

  }

  void refresh(int index){
    pageIndex=index;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('狗吧'),
      ),
      body:gotoPage(),
      drawer: Drawer(child: Column(
        children: <Widget>[
          DrawerItem(1, '猜猜狗品种',refresh),
          DrawerItem(2, '养狗宝典',refresh),
          DrawerItem(3, '关于我们',refresh)
        ],

      ),)
    );
  }

  Widget gotoPage() {
    Widget widget;
    switch(pageIndex){
      case 1:{
        widget=DogBar();
      };break;
      case 2:{
        widget=DogCollection();
      };break;
      case 3:{
        widget=About();
      };break;
    }
    return widget;
  }
}
typedef DrawerCallback = void Function(int index);
//抽屉
class DrawerItem extends StatelessWidget {
  final int id;
  final String name;
  //callback
  @required DrawerCallback onDrawerPress;

  DrawerItem(this.id, this.name,this.onDrawerPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
        Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 52.0,
      child: FlatButton(
          onPressed: () {
            onDrawerPress(id);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[Text(id.toString()), Text(' - '), Text(name)],
          )),
    );
  }
}