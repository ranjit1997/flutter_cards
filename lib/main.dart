import 'package:flutter/material.dart';
// import 'package:flutter_cards/views/list_page.dart';
// import 'package:flutter_cards/views/new_page.dart';
import 'package:flutter_cards/views/time.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TimePage(),
    );
  }
}
