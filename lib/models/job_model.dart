// models/job_model.dart

class Job {
  final String title;
  final String company;
  final String location;
  final String description;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.description,
  });

  // Factory method to create a Job from JSON data
  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      title: json['title'] ?? 'No Title',
      company: json['company'] ?? 'No Company',
      location: json['location'] ?? 'No Location',
      description: json['description'] ?? 'No Description',
    );
  }
}
