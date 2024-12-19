import 'package:flutter/material.dart';

class AzanNotificationToggle extends StatefulWidget {
  final bool isAzanNotificationEnabled;
  final Function(bool) onChanged;

  const AzanNotificationToggle({
    Key? key,
    required this.isAzanNotificationEnabled,
    required this.onChanged,
  }) : super(key: key);

  @override
  _AzanNotificationToggleState createState() => _AzanNotificationToggleState();
}

class _AzanNotificationToggleState extends State<AzanNotificationToggle> {
  late bool _isEnabled;

  @override
  void initState() {
    super.initState();
    _isEnabled = widget.isAzanNotificationEnabled;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        title: const Text(
          'Azan Notification',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          _isEnabled ? 'Enabled' : 'Disabled',
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        trailing: Switch(
          value: _isEnabled,
          onChanged: (value) {
            setState(() {
              _isEnabled = value;
            });
            widget.onChanged(value);
          },
        ),
      ),
    );
  }
}
