import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../models/prayer_time_model.dart';
import '../constants/app_strings.dart';

class PrayerTimeService {
  // Fetch prayer times for a specific location
  Future<PrayerTimeModel?> fetchPrayerTimes(double latitude, double longitude) async {
    try {
      final response = await http.get(Uri.parse(
        '${AppStrings.apiBaseUrl}/timings?latitude=$latitude&longitude=$longitude&method=2',
      ));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return PrayerTimeModel.fromJson(data['data']);
      } else {
        throw Exception('Failed to load prayer times');
      }
    } catch (e) {
      print('Error fetching prayer times: $e');
      return null;
    }
  }

  // Format the prayer time in a human-readable format
  String formatPrayerTime(String time) {
    try {
      final parsedTime = DateFormat('HH:mm').parse(time);
      return DateFormat('hh:mm a').format(parsedTime);
    } catch (e) {
      print('Error formatting prayer time: $e');
      return time;
    }
  }

  // Get the next prayer time based on the current time
  Future<String> getNextPrayerTime(double latitude, double longitude) async {
    final prayerTimes = await fetchPrayerTimes(latitude, longitude);
    if (prayerTimes != null) {
      final currentTime = DateFormat('HH:mm').format(DateTime.now());
      final prayerTimesList = [
        prayerTimes.fajr,
        prayerTimes.dhuhr,
        prayerTimes.asr,
        prayerTimes.maghrib,
        prayerTimes.isha,
      ];

      for (var prayer in prayerTimesList) {
        if (prayer.compareTo(currentTime) > 0) {
          return formatPrayerTime(prayer);
        }
      }
      return 'No more prayers today';
    }
    return 'Unable to fetch prayer times';
  }
}
