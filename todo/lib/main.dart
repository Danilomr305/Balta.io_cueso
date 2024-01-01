// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names, unnecessary_new

import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:  HomePage(),
    );
  }
}