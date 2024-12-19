import 'package:flutter/material.dart';

class PrayerTimingsPage extends StatelessWidget {
  final List<String> prayerTimings = [
    "Fajr: 5:30 AM",
    "Dhuhr: 12:30 PM",
    "Asr: 3:45 PM",
    "Maghrib: 6:15 PM",
    "Isha: 7:30 PM"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prayer Timings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prayer Timings for Today',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: prayerTimings.length,
                itemBuilder: (context, index) {
                  return PrayerTimeRow(prayer: prayerTimings[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrayerTimeRow extends StatelessWidget {
  final String prayer;

  const PrayerTimeRow({
    Key? key,
    required this.prayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        title: Text(
          prayer,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          Icons.access_time,
          color: Colors.blue,
        ),
      ),
    );
  }
}
