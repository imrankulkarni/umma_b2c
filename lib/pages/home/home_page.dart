import 'package:flutter/material.dart';
import '../../widgets/ad_banner.dart';
import '../../widgets/prayer_time_card.dart';
import '../../widgets/event_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Ad Banner
            AdBanner(
              imageUrl: 'https://example.com/banner.jpg',
              title: 'Explore Special Offers!',
              onTap: () {
                print('Ad tapped!');
              },
            ),

            // Prayer Time Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Prayer Times',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PrayerTimeCard(
              prayerName: 'Fajr',
              time: '5:15 AM',
            ),
            PrayerTimeCard(
              prayerName: 'Dhuhr',
              time: '12:45 PM',
            ),
            PrayerTimeCard(
              prayerName: 'Asr',
              time: '3:30 PM',
            ),
            PrayerTimeCard(
              prayerName: 'Maghrib',
              time: '5:55 PM',
            ),
            PrayerTimeCard(
              prayerName: 'Isha',
              time: '7:10 PM',
            ),

            // Events Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Upcoming Events',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            EventTile(
              title: 'Community Gathering',
              date: '15th Dec 2024',
              location: 'Central Mosque',
              description: 'Join us for a community gathering at the mosque.',
              onTap: () {
                print('Event tapped!');
              },
            ),
            EventTile(
              title: 'Charity Drive',
              date: '20th Dec 2024',
              location: 'East Mosque',
              description: 'Donate for a good cause at our charity drive.',
              onTap: () {
                print('Event tapped!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
