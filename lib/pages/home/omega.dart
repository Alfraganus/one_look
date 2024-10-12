import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Omega extends StatelessWidget {
  const  Omega({super.key});

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
              color:  Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal : 16),
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
                      Text(" Omega 3", style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("1 pill after meal", style: TextStyle(
                          fontSize: 20,
                        color: HexColor('#898D9E')
                      ),),
                    ],
                  ),
              Container(
                padding: EdgeInsets.all(4.0), // Padding around the border
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey, // Outline border color
                    width: 2.0, // Outline border width
                  ),
                ),
                child: CircleAvatar(
                  radius: 20.0, // Radius of the inner circle
                  backgroundColor: HexColor('#58c6CD'), // Background color of the inner circle
                  child: Icon(
                    Icons.check, // The tick icon
                    color: Colors.white, // Color of the tick
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
