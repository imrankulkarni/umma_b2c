import 'package:flutter/material.dart';
import 'package:umma_b2c/pages/home/home_page.dart';
import 'package:umma_b2c/pages/mosque/mosque_finder_page.dart';
import 'package:umma_b2c/pages/mosque/mosque_detail_page.dart';
import 'package:umma_b2c/pages/prayer/prayer_timings_page.dart';
import 'package:umma_b2c/pages/anjuman/anjuman_updates_page.dart';
import 'package:umma_b2c/pages/jobs/jobs_page.dart';
import 'package:umma_b2c/pages/ads/ads_page.dart';
import 'package:umma_b2c/pages/settings/settings_page.dart';

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
      mosqueDetail: (context) => const MosqueDetailPage(),
      prayerTimings: (context) => const PrayerTimingsPage(),
      anjumanUpdates: (context) => const AnjumanUpdatesPage(),
      jobs: (context) => const JobsPage(),
      ads: (context) => const AdsPage(),
      settings: (context) => const SettingsPage(),
    };
  }
}
