import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:one_look/pages/home/logic/HomeLogic.dart';

Container buildCustomNavigationBar() {
  final controller = Get.put(HomelogicController());

  return Container(
    height: 80.0, // Set the desired height here
    child: Obx(() => BottomNavigationBar(
      currentIndex: controller.bottomMenuIndex.value, // Use .value to access the RxInt value
      onTap: (index) {
        controller.changeIndex(index); // Change index when a tab is tapped
      },
      items: [
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: controller.bottomMenuIndex.value == 0
                ? 'assets/images/menu home.png'
                : 'assets/images/menu homeinactive.png',
          ),
          label: '',
          activeIcon: Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2), // Light blue background
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10), // Adds space around the icon
            child: Image.asset(
              'assets/images/menu home.png',
              width: 25, // Adjust the size as needed
              height: 25,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: controller.bottomMenuIndex.value == 1
                ? 'assets/images/menu activity_Active.png'
                : 'assets/images/menu activity.png',
          ),
          label: '',
          activeIcon: Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2), // Light blue background
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10), // Adds space around the icon
            child: Image.asset(
              'assets/images/menu activity.png',
              width: 25, // Adjust the size as needed
              height: 25,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: controller.bottomMenuIndex.value == 2
                ? 'assets/images/menu progress.png'
                : 'assets/images/menu progress_active.png',
          ),
          label: '',
          activeIcon: Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2), // Light blue background
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10), // Adds space around the icon
            child: Image.asset(
              'assets/images/menu progress.png',
              width: 25, // Adjust the size as needed
              height: 25,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: CustomBottomNavBarItem(
            imagePath: controller.bottomMenuIndex.value == 3
                ? 'assets/images/menu settings.png'
                : 'assets/images/menu settings_Active.png',
          ),
          label: '',
          activeIcon: Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2), // Light blue background
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10), // Adds space around the icon
            child: Image.asset(
              'assets/images/menu settings.png',
              width: 25, // Adjust the size as needed
              height: 25,
            ),
          ),
        ),
        // Add other items...
      ],
    )),
  );
}

class CustomBottomNavBarItem extends StatelessWidget {
  final String imagePath;

  const CustomBottomNavBarItem({
    Key? key,
    required this.imagePath,
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