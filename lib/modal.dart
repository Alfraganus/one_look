import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Appbar.dart';

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var screenSize = MediaQuery.of(context).size;
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.30,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 18),
              Text(
                'Choose task category',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: HexColor('#585CE5'),
                    width: 2, // Explicitly define the border width
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Get.toNamed('add_activity');
                  },
                  child: Text(
                    "Activity",
                    style: TextStyle(
                      color: HexColor('#585CE5'),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: HexColor('#585CE5'),
                      width: 2, // Explicitly define the border width
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();  // Close the dialog first
                      Get.toNamed('/add_supplement');  // Then navigate to the screen
                    },
                    child: Text(
                      "Supplement",
                      style: TextStyle(
                        color: HexColor('#585CE5'),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
