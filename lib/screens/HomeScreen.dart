import 'package:flutter/material.dart';
import 'package:flutter_delivery/screens/HomeScreenController.dart';
import 'package:flutter_delivery/widgets/Navigation.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (_) => Scaffold(
          drawer: Navigation(),
          appBar: AppBar(title: Text('Home Screen'), actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {_.getInboxSMS();},
                  child: Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                ))
          ]),
          body:TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _.focusedDay,
            calendarFormat: _.calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_.selectedDay, day);
            },
            onFormatChanged: (format) {
                _.calendarFormat = format;
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              _.focusedDay = focusedDay;
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_.selectedDay, selectedDay)) {
                  _.selectedDay = selectedDay;
                  _.focusedDay = focusedDay;
              }
            },
          ),
      ),
    );
  }
}
