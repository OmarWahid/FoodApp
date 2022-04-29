import 'package:flutter/material.dart';
import 'package:foodapp_demo/screens/home_screen.dart';
var  thisIsImage ;
var pricee ;
var pricePromoo ;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
