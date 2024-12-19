import 'package:flutter/material.dart';

class PrayerTimeRow extends StatelessWidget {
  final String prayerTime;
  final String prayerName;

  const PrayerTimeRow({
    Key? key,
    required this.prayerTime,
    required this.prayerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        title: Text(
          prayerName,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          prayerTime,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
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
