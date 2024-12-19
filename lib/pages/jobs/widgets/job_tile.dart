// widgets/job_tile.dart

import 'package:flutter/material.dart';
import '../../../models/job_model.dart';
import '../models/job_model.dart'; // Ensure this path is correct

class JobTile extends StatelessWidget {
  final Job job;

  const JobTile({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        title: Text(job.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Company: ${job.company}'),
            Text('Location: ${job.location}'),
            const SizedBox(height: 4.0),
            Text(
              job.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        onTap: () {
          // Handle job tap
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('You tapped on: ${job.title}')),
          );
        },
      ),
    );
  }
}
