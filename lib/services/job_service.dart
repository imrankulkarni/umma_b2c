// services/job_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/job_model.dart';

class JobService {
  Future<List<Job>> fetchJobs() async {
    try {
      // Simulated API call (replace the URL with your API endpoint)
      final response = await http.get(Uri.parse('https://example.com/jobs'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((jobJson) => Job.fromJson(jobJson)).toList();
      } else {
        throw Exception('Failed to load jobs');
      }
    } catch (e) {
      throw Exception('Error fetching jobs: $e');
    }
  }
}
