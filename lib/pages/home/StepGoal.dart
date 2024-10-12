import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Stepgoal extends StatelessWidget {
  const Stepgoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/steps.png',
            height: 55,
          ),
          Expanded( // Use Expanded to take the available space
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns items to the start
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "Step Goal",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity, // Ensure it takes full width
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('4 456', style: TextStyle(
                          color: HexColor('#898D9E'),
                          fontSize: 20
                        ),),
                        Text('3 456',style: TextStyle(
                            color: HexColor('#898D9E'),
                            fontSize: 20
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * 0.72,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: HexColor('#58C6CD'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
