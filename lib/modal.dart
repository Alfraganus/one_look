import 'package:flutter/material.dart';

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
          height: screenSize.height * 0.26,
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
                    // Handle button press
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
                padding: const EdgeInsets.only(top: 15),
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
                      // Handle button press
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
