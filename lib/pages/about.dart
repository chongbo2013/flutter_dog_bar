
import 'package:flutter/material.dart';
//关于我们
class About extends StatefulWidget {
  About({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '关于我们',
          )
        ],
      ),
    );
  }
}
