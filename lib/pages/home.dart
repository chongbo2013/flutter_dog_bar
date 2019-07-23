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
  var _titleName;
  void refresh(int index){
    pageIndex=index;
    _titleName=_widgetNameOptions[pageIndex];
    setState(() {});
    globalScaffold.currentState.openEndDrawer();
  }

  get _drawer =>Drawer(child: Column(
    children: <Widget>[
      DrawerItem(0, '猜猜狗品种',refresh),
      DrawerItem(1, '养狗宝典',refresh),
      DrawerItem(2, '关于我们',refresh)
    ],

  ));
  GlobalKey<ScaffoldState> globalScaffold=new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(key:globalScaffold,
      appBar: AppBar(
        title: Text(_titleName),
      ),
      body:gotoPage(),
      drawer: _drawer
    );
  }

  final _widgetOptions = [
    DogBar(),
    DogCollection(),
    About(),
  ];
  final _widgetNameOptions = [
    '猜猜狗品种',
    '养狗宝典',
    '关于我们',
  ];
  @override
  bool get wantKeepAlive => true;
  Widget gotoPage() {

    return _widgetOptions[pageIndex];
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
  void popDrawer(){

  }
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