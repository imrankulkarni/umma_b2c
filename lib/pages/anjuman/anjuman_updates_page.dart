import 'package:flutter/material.dart';

class AnjumanUpdatesPage extends StatelessWidget {
  final List<String> anjumanUpdates = [
    'Anjuman meeting on 20th December at 5:00 PM.',
    'Charity event on 25th December.',
    'Volunteer opportunities available for the upcoming event.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anjuman Updates'),
      ),
      body: ListView.builder(
        itemCount: anjumanUpdates.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(anjumanUpdates[index]),
            leading: Icon(Icons.notification_important),
          );
        },
      ),
    );
  }
}
