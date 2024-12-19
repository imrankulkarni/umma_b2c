import 'package:flutter/material.dart';
import 'widgets/language_toggle.dart';
import 'widgets/notification_preferences.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Language Toggle Section
            LanguageToggle(),
            const SizedBox(height: 16.0),

            // Notification Preferences Section
            NotificationPreferences(),
            const SizedBox(height: 16.0),

            // You can add more settings options as required
            // For example, a dark mode toggle, privacy settings, etc.
          ],
        ),
      ),
    );
  }
}
