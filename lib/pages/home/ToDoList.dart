import 'package:flutter/cupertino.dart';
import '../../Appbar.dart';
import '../../modal.dart';
import '../../static.dart';

Row  ToDoList(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("To-do-list",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color:  HexColor(headingColor)
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20 ),
        child: GestureDetector(
          onTap:() {
            showCustomDialog(context);
          },
          child: RichText(text: TextSpan(
              children: [
                WidgetSpan(child: Image.asset('assets/images/add.png',height: 24,),),
                WidgetSpan(
                  child: SizedBox(width: 8),
                ),
                TextSpan(
                  text: 'Add task',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: HexColor(blueColor),
                  ),
                ),
              ]
          )),
        ),
      )
    ],
  );
}
