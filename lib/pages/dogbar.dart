
import 'package:flutter/material.dart';
//猜猜狗游戏
class DogBar extends StatefulWidget {
  DogBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DogBarState createState() => _DogBarState();
}

class _DogBarState extends State<DogBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '猜猜狗游戏',
          )
        ],
      ),
    );
  }
}
