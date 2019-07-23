import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dogbar.dart';

//主页
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('狗吧'),
      ),
      body:DogBar(),
      drawer: Drawer(child: Column(
        children: <Widget>[
          DrawerItem(1, '猜猜狗品种'),
          DrawerItem(2, '养狗宝典'),
          DrawerItem(3, '关于我们')
        ],

      ),)
    );
  }
}

//抽屉
class DrawerItem extends StatelessWidget {
  final int id;
  final String name;

  DrawerItem(this.id, this.name);

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
          onPressed: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[Text(id.toString()), Text(' - '), Text(name)],
          )),
    );
  }
}