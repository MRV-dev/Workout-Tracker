import 'package:flutter/material.dart';
import 'package:new_app/Home.dart';
import 'package:new_app/pages/ListItems.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:listItems(),
      debugShowCheckedModeBanner: false,
    );
  }
}