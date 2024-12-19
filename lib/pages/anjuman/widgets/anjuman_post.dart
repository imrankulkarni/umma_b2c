import 'package:flutter/material.dart';

class AnjumanPost extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String author;

  const AnjumanPost({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium, // Updated from headline6
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium, // Updated from bodyText2
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Posted by $author',
                  style: Theme.of(context).textTheme.bodySmall, // Updated from caption
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodySmall, // Updated from caption
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
