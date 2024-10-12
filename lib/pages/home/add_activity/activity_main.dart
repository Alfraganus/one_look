import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Appbar.dart';
import '../../../static.dart';
import '../add_sumpplement/ReminderCheck.dart';
import '../add_sumpplement/supplemantary_formGetX.dart';

class ActivityMain extends StatelessWidget {
  const ActivityMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(
                  'assets/images/close.png', // Path to your notification icon
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Add Activity ',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: HexColor(headingColor)),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Choose the type of activity",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              SupplemantaryFormgetx(
                selectedForm: 'Walking',
                supplementForms: [
                  {
                    "label": "Running",
                    "image": "assets/images/activity choice.png"
                  },
                  {
                    "label": "Walking",
                    "image": "assets/images/activity choice1.png"
                  },
                  {
                    "label": "Fitness",
                    "image": "assets/images/activity choice2.png"
                  },
                  {
                    "label": "Yoga",
                    "image": "assets/images/activity choice3.png"
                  },
                ],
              ),
              SupplemantaryFormgetx(
                selectedForm: '',
                supplementForms: [
                  {
                    "label": "Running",
                    "image": "assets/images/activity choice4.png"
                  },
                  {
                    "label": "Rollers",
                    "image": "assets/images/activity choice5.png"
                  },
                  {
                    "label": "Breating",
                    "image": "assets/images/activity choice6.png"
                  },
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Time of day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SupplemantaryFormgetx(
                selectedForm: 'Morning',
                supplementForms: [
                  {
                    "label": "Morning",
                    "image": "assets/images/form_star icon w.png"
                  },
                  {
                    "label": "Afternoon",
                    "image": "assets/images/form_star icon w1.png"
                  },
                  {
                    "label": "Evening",
                    "image": "assets/images/form_star icon w3.png"
                  },
                  {
                    "label": "Night",
                    "image": "assets/images/form_star icon w4.png"
                  },
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  color:HexColor("#FAFAFF"),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          color: HexColor("#D0D1FF"), // Background for current time
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      TimePickerSpinner(
                        is24HourMode: true,
                        normalTextStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        highlightedTextStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color for selected time
                        ),
                        spacing: 40,
                        itemHeight: 50,
                        isForce2Digits: true,
                        onTimeChange: (time) {
                          /*setState(() {
                            _selectedTime = time;
                          });*/
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Set reminder",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              SizedBox(height: 20), //
              Remindercheck(title: "Before the sheduled time"),
              SizedBox(height: 10),
              Divider(),
              Remindercheck(title: "After exceeding the time"),
              SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed('/');
                        },
                        child: Text(
                          "Add Activity",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
