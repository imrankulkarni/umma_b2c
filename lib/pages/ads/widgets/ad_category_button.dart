import 'package:flutter/material.dart';

class AdCategoryButton extends StatelessWidget {
  final String categoryName;
  final IconData icon;
  final Function onTap;

  // Constructor to accept category data
  const AdCategoryButton({
    Key? key,
    required this.categoryName,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(), // Trigger the action when the category button is tapped
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 8.0),
              Text(
                categoryName,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
