import 'package:flutter/material.dart';
import '../pages/ads/ads_page.dart';
import '../pages/anjuman/anjuman_updates_page.dart';
import '../pages/home/home_page.dart';
import '../pages/jobs/jobs_page.dart';
import '../pages/mosque/mosque_detail_page.dart';
import '../pages/mosque/mosque_finder_page.dart';
import '../pages/prayer/prayer_timings_page.dart';
import '../pages/settings/settings_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String mosqueFinder = '/mosqueFinder';
  static const String mosqueDetail = '/mosqueDetail';
  static const String prayerTimings = '/prayerTimings';
  static const String anjumanUpdates = '/anjumanUpdates';
  static const String jobs = '/jobs';
  static const String ads = '/ads';
  static const String settings = '/settings';

  static Map<String, WidgetBuilder> routes() {
    return {
      home: (context) => const HomePage(),
      mosqueFinder: (context) => const MosqueFinderPage(),
      mosqueDetail: (context) => MosqueDetailPage(
        mosqueName: 'Default Mosque Name', // Pass a default value or handle dynamically
        mosqueAddress: 'Default Mosque Address',
      ),
      prayerTimings: (context) => PrayerTimingsPage(),
      anjumanUpdates: (context) => AnjumanUpdatesPage(),
      jobs: (context) => JobsPage(),
      ads: (context) => AdsPage(),
      settings: (context) => SettingsPage(),
    };
  }
}
