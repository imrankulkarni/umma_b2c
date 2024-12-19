import 'package:flutter/material.dart';

class MosqueFinderPage extends StatelessWidget {
  const MosqueFinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mosque Finder'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Bar for Mosque
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for a mosque...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              onChanged: (value) {
                // Handle search logic here
              },
            ),
          ),

          // List of Mosques
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of mosques
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ListTile(
                    leading: const Icon(Icons.location_on, size: 40.0),
                    title: Text('Mosque ${index + 1}'),
                    subtitle: const Text('Address of the mosque'),
                    onTap: () {
                      // Navigate to Mosque Detail Page
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
