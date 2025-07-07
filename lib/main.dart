import 'package:flutter/material.dart';
import 'package:new_app/World_time/choose_location.dart';
import 'package:new_app/World_time/home.dart';
import 'package:new_app/World_time/loading.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/' : (context) => Home(),
      '/loading' : (context) => Loading(),
      '/location' : (context) => ChooseLocation(),
    },
  ));
}


