import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Appbar.dart';
import '../../static.dart';
import 'HealthList.dart';
import 'HealthStats.dart';
import 'StepGoal.dart';
import 'ToDoList.dart';
import 'BreathTraining.dart';
import 'VidaminD.dart';
import 'omega.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildCustomAppBar(),
      body: SingleChildScrollView(
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
      ),
    );
  }

}

 
