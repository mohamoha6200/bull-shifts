import 'package:intl/intl.dart';

import '../constants/utils_contants.dart';

DateTime _now = DateTime.now();

extension DateTimeExtension on DateTime {
  String toDefaultDateFormatted() {
    return DateFormat(UtilsConstants.defaultDateFormat, UtilsConstants.localeFr)
        .format(this);
  }

  String toDefaultTimeFormatted() {
    return DateFormat(UtilsConstants.defaultTimeFormat, UtilsConstants.localeFr)
        .format(this);
  }

  bool isSameDay(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  bool isToday() {
    return isSameDay(_now);
  }
}
