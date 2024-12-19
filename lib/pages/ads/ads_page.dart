import 'package:flutter/material.dart';
import 'widgets/ad_card.dart'; // Import the ad card widget for displaying individual ads
import 'widgets/ad_category_button.dart'; // Import a widget to filter ads by category

class AdsPage extends StatelessWidget {
  const AdsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ads'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here if required
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Category Filter Section
            Wrap(
              spacing: 8.0,
              children: [
                AdCategoryButton(
                  categoryName: 'Electronics',
                  icon: Icons.electrical_services,
                  onTap: () {
                    // Implement Electronics category action here
                    print('Electronics selected');
                  },
                ),
                AdCategoryButton(
                  categoryName: 'Furniture',
                  icon: Icons.chair,
                  onTap: () {
                    // Implement Furniture category action here
                    print('Furniture selected');
                  },
                ),
                AdCategoryButton(
                  categoryName: 'Jobs',
                  icon: Icons.work,
                  onTap: () {
                    // Implement Jobs category action here
                    print('Jobs selected');
                  },
                ),
                AdCategoryButton(
                  categoryName: 'Real Estate',
                  icon: Icons.home,
                  onTap: () {
                    // Implement Real Estate category action here
                    print('Real Estate selected');
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Ads List Section
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with the actual count of ads from your data source
                itemBuilder: (context, index) {
                  return AdCard(
                    title: 'Ad Title $index',
                    description: 'This is a description for the ad $index.',
                    imageUrl: 'https://example.com/ad_image.jpg', // Replace with dynamic image URL
                    onTap: () {
                      // Handle tap on ad (e.g., navigate to ad details)
                      print('Ad $index tapped');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
