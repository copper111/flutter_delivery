import 'package:flutter/material.dart';
import 'package:flutter_delivery/screens/CalendarScreen.dart';
import 'package:flutter_delivery/screens/HomeScreen.dart';
import 'package:flutter_delivery/screens/SettingsScreen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "flutter delivery",
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/calendar', page: () => CalendarScreen()),
        GetPage(name: '/settings', page: () => SettingsScreen()),
      ],

    );
  }
}

