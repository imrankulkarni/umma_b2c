import 'package:flutter/material.dart';

class AnjumanFilterDropdown extends StatelessWidget {
  final List<String> filterOptions;
  final String selectedOption;
  final ValueChanged<String> onFilterChanged;

  const AnjumanFilterDropdown({
    Key? key,
    required this.filterOptions,
    required this.selectedOption,
    required this.onFilterChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedOption,
      onChanged: (String? newValue) {
        if (newValue != null) {
          onFilterChanged(newValue);
        }
      },
      items: filterOptions.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      isExpanded: true,
      icon: const Icon(Icons.filter_list),
      hint: const Text('Select Filter'),
      style: Theme.of(context).textTheme.bodyLarge, // Updated to bodyLarge
    );
  }
}
