import 'package:flutter/material.dart';
import 'package:flutter_delivery/widgets/Navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigation(),
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Text('Home screen'),
    );
  }
}