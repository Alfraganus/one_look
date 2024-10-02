import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../Appbar.dart';
import '../../BottomNavigationBar.dart';
import '../../static.dart';
import 'HealthList.dart';
import 'HealthStats.dart';
import 'StepGoal.dart';
import 'ToDoList.dart';
import 'BreathTraining.dart';
import 'VidaminD.dart';
import 'logic/HomeLogic.dart';
import 'omega.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomelogicController());
    return Scaffold(
      appBar: buildCustomAppBar(),
      bottomNavigationBar: buildCustomNavigationBar(),
        body: Obx(() => IndexedStack(
          index: controller.bottomMenuIndex.value, // Use current index to switch views
          children: [
            CurrentPage(),           // The homepage (for the first icon)
            ProgressPage(),
            SettingsPage()
          ],
        )),
    );
  }

}

class CurrentPage extends StatelessWidget {
  const CurrentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi Madison!',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: HexColor(headingColor)
              ),
            ),
            SizedBox(height: 20),
            HealthStats(),
            SizedBox(height: 20),
            HealthStatsRow(),
            SizedBox(height: 20),
            ToDoList(),
            SizedBox(height: 20),
            BreathTraining(),
            SizedBox(height: 15 ),
            Omega(),
            SizedBox(height: 15 ),
            Vidamind(),
            SizedBox(height: 15 ),
            Stepgoal(),
          ],
        ),
      ),
    );
  }
}


class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Progress Page"));
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Settings Page"));
  }
}
