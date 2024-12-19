import 'package:flutter/material.dart';

class LanguageToggle extends StatefulWidget {
  @override
  _LanguageToggleState createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  bool isEnglish = true; // Default language is English

  void toggleLanguage() {
    setState(() {
      isEnglish = !isEnglish;
    });
    // Implement language change logic (e.g., using a package like 'flutter_localizations')
    // This is just a placeholder for demonstration purposes
    if (isEnglish) {
      print('Switched to English');
    } else {
      print('Switched to Arabic');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text('Language'),
        subtitle: Text(isEnglish ? 'English' : 'Arabic'),
        trailing: Switch(
          value: isEnglish,
          onChanged: (value) {
            toggleLanguage();
          },
        ),
      ),
    );
  }
}
