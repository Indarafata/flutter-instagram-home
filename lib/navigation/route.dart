import 'package:flutter/material.dart';
import 'package:instagram_home_page/page/home_page.dart';
import 'package:instagram_home_page/utils/const.dart';

class MyRoute {
  static const List<Widget> widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Ahmed Indarafata',
      style: optionStyle,
    ),
    Text(
      'Mobile Developer',
      style: optionStyle,
    ),
    Text(
      'Skills Next',
      style: optionStyle,
    ),
    Text(
      'Flutter, Kotlin, Java',
      style: optionStyle,
    ),
  ];
}
