
import 'package:flutter/material.dart';

Container buildCustomNavigationBar() {
  return Container(
    height: 80.0, // Set the desired height here
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: 'assets/images/menu home.png', // Update with your image path
            label: '',
          ),
          label: '', // Leave empty if the label is handled in the custom widget
        ),
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: 'assets/images/menu activity.png', // Update with your image path
            label: '',
          ),
          label: '', // Leave empty if the label is handled in the custom widget
        ),
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: 'assets/images/menu progress.png', // Update with your image path
            label: '',
          ),
          label: '', // Leave empty if the label is handled in the custom widget
        ),
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: 'assets/images/menu settings.png', // Update with your image path
            label: '',
          ),
          label: '', // Leave empty if the label is handled in the custom widget
        ),
        // Add other items...
      ],
      // Add other BottomNavigationBar properties like currentIndex, onTap, etc.
    ),
  );
}

class CustomBottomNavBarItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const CustomBottomNavBarItem({
    Key? key,
    required this.imagePath,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          width: 27, // Adjust the size as needed
          height: 27,
        ),
       ],
    );
  }
}