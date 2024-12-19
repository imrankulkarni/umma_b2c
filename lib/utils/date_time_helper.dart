import 'package:intl/intl.dart';

class DateTimeHelper {
  // Convert DateTime to a string in a specific format
  static String formatDateTime(DateTime dateTime, {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    return DateFormat(format).format(dateTime);
  }

  // Parse a string to DateTime using a specific format
  static DateTime parseDateTime(String dateTimeString, {String format = 'yyyy-MM-dd HH:mm:ss'}) {
    return DateFormat(format).parse(dateTimeString);
  }

  // Get the difference between two DateTimes
  static String getDifference(DateTime start, DateTime end) {
    Duration difference = end.difference(start);
    if (difference.inDays > 0) {
      return '${difference.inDays} day(s) ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour(s) ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute(s) ago';
    } else {
      return 'Just now';
    }
  }

  // Get the start of the day for a given DateTime (00:00:00)
  static DateTime getStartOfDay(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 0, 0, 0);
  }

  // Get the end of the day for a given DateTime (23:59:59)
  static DateTime getEndOfDay(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, 23, 59, 59);
  }

  // Add days to a DateTime
  static DateTime addDays(DateTime dateTime, int days) {
    return dateTime.add(Duration(days: days));
  }

  // Subtract days from a DateTime
  static DateTime subtractDays(DateTime dateTime, int days) {
    return dateTime.subtract(Duration(days: days));
  }

  // Convert a DateTime to a human-readable format
  static String toHumanReadableFormat(DateTime dateTime) {
    return DateFormat.yMMMMd().add_jm().format(dateTime);
  }

  // Get current DateTime as a string in ISO format
  static String getCurrentDateTime() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  }

  // Convert a DateTime to Unix timestamp (milliseconds)
  static int toUnixTimestamp(DateTime dateTime) {
    return dateTime.millisecondsSinceEpoch;
  }

  // Convert Unix timestamp to DateTime
  static DateTime fromUnixTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }
}
