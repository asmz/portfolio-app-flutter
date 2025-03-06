import 'package:intl/intl.dart';

String convertTime(int second) {
  int microsecond = second * 1000 * 1000;
  DateTime date = DateTime.fromMicrosecondsSinceEpoch(microsecond);
  String time = DateFormat("yyyy/MM/dd").format(date).toString();
  return time; //例 2020年08月14日
}
