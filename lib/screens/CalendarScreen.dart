import 'package:flutter/material.dart';
import 'package:flutter_delivery/widgets/Navigation.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigation(),
      appBar: AppBar(
        title: Text('Calendar Screen'),
      ),
      body: Text('Calendar screen'),
    );
  }
}