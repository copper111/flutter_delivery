import 'package:telephony/telephony.dart';

class SmsService {
  getInboxSms() async{
    return Telephony.instance.getInboxSms();
  }

  getSentSms() async{
    return Telephony.instance.getSentSms();
  }
}

