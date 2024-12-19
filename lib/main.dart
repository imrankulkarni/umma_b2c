import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';
import 'pages/prayer/prayer_timings_page.dart';
import 'pages/anjuman/anjuman_updates_page.dart';
import 'pages/ads/ads_page.dart';
import 'pages/jobs/jobs_page.dart';
import 'utils/app_routes.dart'; // Route Management

void main() {
  runApp(const UmmaB2CApp());
}

class UmmaB2CApp extends StatelessWidget {
  const UmmaB2CApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Umma B2C App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          elevation: 2,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.prayerTimings: (context) => const PrayerTimingsPage(),
        AppRoutes.anjumanUpdates: (context) => const AnjumanUpdatesPage(),
        AppRoutes.ads: (context) => const AdsPage(),
        AppRoutes.jobs: (context) => const JobsPage(),
      },
    );
  }
}
