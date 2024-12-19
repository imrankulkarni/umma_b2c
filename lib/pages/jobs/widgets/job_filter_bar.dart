import 'package:flutter/material.dart';

class JobFilterBar extends StatefulWidget {
  final Function(String?) onLocationChanged;
  final Function(String?) onJobTypeChanged;
  final Function(RangeValues) onSalaryRangeChanged;

  JobFilterBar({
    required this.onLocationChanged,
    required this.onJobTypeChanged,
    required this.onSalaryRangeChanged,
  });

  @override
  _JobFilterBarState createState() => _JobFilterBarState();
}

class _JobFilterBarState extends State<JobFilterBar> {
  String? selectedLocation;
  String? selectedJobType;
  RangeValues salaryRange = RangeValues(0, 100000);

  final List<String> locations = ['New York', 'Los Angeles', 'Chicago', 'San Francisco'];
  final List<String> jobTypes = ['Full-time', 'Part-time', 'Contract', 'Internship'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Location Filter
          DropdownButtonFormField<String>(
            value: selectedLocation,
            hint: Text('Select Location'),
            items: locations.map((location) {
              return DropdownMenuItem<String>(
                value: location,
                child: Text(location),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedLocation = value;
              });
              widget.onLocationChanged(value);
            },
          ),
          SizedBox(height: 16),

          // Job Type Filter
          DropdownButtonFormField<String>(
            value: selectedJobType,
            hint: Text('Select Job Type'),
            items: jobTypes.map((type) {
              return DropdownMenuItem<String>(
                value: type,
                child: Text(type),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedJobType = value;
              });
              widget.onJobTypeChanged(value);
            },
          ),
          SizedBox(height: 16),

          // Salary Range Filter
          RangeSlider(
            min: 0,
            max: 100000,
            values: salaryRange,
            divisions: 10,
            labels: RangeLabels(
              '\$${salaryRange.start.round()}',
              '\$${salaryRange.end.round()}',
            ),
            onChanged: (values) {
              setState(() {
                salaryRange = values;
              });
              widget.onSalaryRangeChanged(values);
            },
          ),
          SizedBox(height: 16),

          // Apply Button
          ElevatedButton(
            onPressed: () {
              // Trigger filtering action (Optional)
            },
            child: Text('Apply Filters'),
          ),
        ],
      ),
    );
  }
}
