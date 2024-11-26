import 'package:flutter/material.dart';
import 'home_page1.dart';
import 'home_page2.dart';
import 'home_page3.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/homePage',
    routes: {
      '/homePage': (context) => HomePage(),
      '/homePage2': (context) => HomePage2(),
      '/homePage3': (context) => HomePage3(),
    },
  ));
}
