import 'package:flutter/material.dart';
import 'package:flutter_delivery/widgets/Navigation.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigation(),
      appBar: AppBar(
        title: Text('Settings Screen'),
      ),
      body: Text('Settings screen'),
    );
  }
}