import 'package:intl/intl.dart';

class FIODateTime {
  static String convertIntToDateTime(int time, {String pattern = "dd/MM/yyyy hh:mm a"}){
    final f = DateFormat(pattern);

    return f.format(DateTime.fromMillisecondsSinceEpoch(time));
  }

  static String convertDateTimeToNearDay(int time, String locale, {String pattern = "dd/MM/yyyy hh:mm a"}){
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final aDateTime = DateTime.fromMillisecondsSinceEpoch(time);
    final aDate = DateTime(aDateTime.year, aDateTime.month, aDateTime.day);
    if(aDate == today) {
      return "today";
    } else if (aDate == yesterday) {
      return "yesterday";
    } else if (aDate == tomorrow) {
      return "tomorrow";
    } else{
      DateFormat dateFormat = DateFormat(pattern, locale);
      return dateFormat.format(aDateTime);
    }
  }

  static String sayGood(int time){
    final aDateTime = DateTime.fromMillisecondsSinceEpoch(time);
    int hour = aDateTime.hour;
    if (hour >= 1 && hour < 12) {
      return ("Good morning");
    } else if (hour >= 12 && hour < 16) {
      return ("Good afternoon");
    } else if (hour >= 16 && hour < 21) {
      return ("Good evening");
    } else if (hour >= 21 && hour < 24) {
      return ("Good night");
    } else {
      return "";
    }
  }
}
