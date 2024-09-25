import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Vidamind extends StatelessWidget {
  const Vidamind({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/pills.png',
                    height: 55,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Vitamin D",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 sashet before meal",
                        style:
                            TextStyle(fontSize: 20, color: HexColor('#898D9E')),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey, // Outline border color
                        width: 2.0, // Outline border width
                      ),
                    ),
                    child: Container(
                      width: 25, // Set your desired width
                      height: 25,
                      decoration: BoxDecoration(
                        color: HexColor('#F0F1F9'), // Background color using HexColor
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
