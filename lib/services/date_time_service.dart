import 'package:intl/intl.dart';

class DateTimeService {
  static String formatDate(String dateTime) {
    final formatter = DateFormat('dd.MM.yyyy H:mm');
    return formatter.format(DateTime.parse(dateTime));
  }
}
