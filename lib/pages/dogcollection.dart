import 'package:flutter/material.dart';
//养狗宝典
class DogCollection extends StatefulWidget {
  DogCollection({Key key}) : super(key: key);

  @override
  _DogCollectionState createState() => _DogCollectionState();
}

class _DogCollectionState extends State<DogCollection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '养狗宝典',
          )
        ],
      ),
    );
  }
}
