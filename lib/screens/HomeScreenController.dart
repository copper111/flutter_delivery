import 'package:flutter_delivery/services/SmsService.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:telephony/telephony.dart';

class HomeScreenController extends GetxController {
  late List<SmsMessage> inboxSmsList = [];

  @override
  void onInit() {
    getInboxSMS();
    super.onInit();
  }

  getInboxSMS() async {
    SmsService()
        .getSentSms()
        .then((value) => {
          this.inboxSmsList = value, update()});
  }

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now().add(Duration(days: 1));
  DateTime _selectedDay = DateTime.now();

  CalendarFormat get calendarFormat => _calendarFormat;

  set calendarFormat(CalendarFormat value) {
    _calendarFormat = value;
    update();
  }

  DateTime get focusedDay => _focusedDay;

  set focusedDay(DateTime value) {
    _focusedDay = value;
    update();
  }

  DateTime get selectedDay => _selectedDay;

  set selectedDay(DateTime value) {
    _selectedDay = value;
    update();
  }
}
