import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dog_bar/pages/about.dart';
import 'package:flutter_dog_bar/pages/dogcollection.dart';
import 'package:flutter_dog_bar/pages/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => Home());
    case 'dogcollection':
      return MaterialPageRoute(builder: (context) => DogCollection());
    case 'about':
      return MaterialPageRoute(builder: (context) => About());
    default:
      return MaterialPageRoute(builder: (context) => Home());
  }
}
