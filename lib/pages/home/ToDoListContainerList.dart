import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TodoListCOlumn extends StatelessWidget {
  const  TodoListCOlumn({super.key});

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
                    'assets/images/breath.png',
                    height: 55,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Breath training", style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: HexColor("#585CE5")), // Change border color here
                          ),
                          onPressed:() {},
                          child: Text("Continue exercise")
                      )
                    ],
                  ),
                  new CircularPercentIndicator(
                    radius: 24.0,
                    lineWidth: 5.0,
                    percent: 0.51,
                    center: new Text("51%"),
                    progressColor: HexColor("#58C6CD"),
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
