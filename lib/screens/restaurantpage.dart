import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';
class RestaurentScreen extends StatelessWidget {
  final Restaurant restaurant;
  RestaurentScreen({
    this.restaurant
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello'),),
    );
  }
}
