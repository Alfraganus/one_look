import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Appbar.dart';

class Remindercheck extends StatelessWidget {
  const Remindercheck({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
            radius: 12.0,
            // Radius of the inner circle
            backgroundColor: HexColor('#58c6CD'),
            // Background color of the inner circle
            child: Icon(
              Icons.check, // The tick icon
              color: Colors.white, // Color of the tick
            ),
          ),
        )
      ],
    );
  }
}
