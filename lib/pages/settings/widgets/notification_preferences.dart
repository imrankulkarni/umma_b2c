import 'package:flutter/material.dart';

class NotificationPreferences extends StatefulWidget {
  @override
  _NotificationPreferencesState createState() =>
      _NotificationPreferencesState();
}

class _NotificationPreferencesState extends State<NotificationPreferences> {
  bool pushNotificationsEnabled = true; // Default value
  bool emailNotificationsEnabled = true; // Default value

  // Function to update the push notification setting
  void togglePushNotifications(bool value) {
    setState(() {
      pushNotificationsEnabled = value;
    });
    // You can implement actual logic to save the preference, e.g., using SharedPreferences
  }

  // Function to update the email notification setting
  void toggleEmailNotifications(bool value) {
    setState(() {
      emailNotificationsEnabled = value;
    });
    // Implement actual logic to save this preference
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notification Preferences',
              style: Theme.of(context).textTheme.headlineMedium, // Updated style
            ),
            SizedBox(height: 16.0),
            SwitchListTile(
              title: Text('Push Notifications'),
              subtitle: Text('Receive notifications directly on your device'),
              value: pushNotificationsEnabled,
              onChanged: togglePushNotifications,
            ),
            SwitchListTile(
              title: Text('Email Notifications'),
              subtitle: Text('Receive updates and offers via email'),
              value: emailNotificationsEnabled,
              onChanged: toggleEmailNotifications,
            ),
          ],
        ),
      ),
    );
  }
}
