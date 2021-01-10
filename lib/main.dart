import 'package:flutter/material.dart';
import 'package:food_app/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery app UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: Colors.deepOrangeAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

