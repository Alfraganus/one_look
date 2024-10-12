import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'DropdownController.dart';

// const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropdownGetX extends StatelessWidget {
  DropdownGetX({super.key,  required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    var drondownLogic = Get.put(Dropdowncontroller(list.first), tag:list.first);
    return Obx(() => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(width: 0),
            color: HexColor('#F0F1F9'), // Background color (Hex #FAFAFF)
          ),
          child: DropdownButton<String>(
            value: drondownLogic.selectedValue.value,
            icon: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image.asset(
                'assets/images/arrow down.png',
                width: 30,
              ),
            ),
            iconSize: 24,
            elevation: 16,
            isExpanded: true,
            underline: SizedBox(),
            onChanged: (String? value) {
              drondownLogic.changeIndex(value!);
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(value),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
