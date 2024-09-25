import 'package:flutter/cupertino.dart';
import '../../Appbar.dart';
import '../../static.dart';

Row  HealthStats() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Health stats",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color:  HexColor(headingColor)
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20 ),
        child: RichText(text: TextSpan(
            children: [
              WidgetSpan(child: Image.asset('assets/images/calendar.png',height: 24,),),
              WidgetSpan(
                child: SizedBox(width: 8),
              ),
              TextSpan(
                text: ' Weekly',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: HexColor(blueColor),
                ),
              ),
            ]
        )),
      )
    ],
  );
}
