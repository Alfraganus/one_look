import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(width: 0),
        color: HexColor('#F0F1F9'), // Background color (Hex #FAFAFF)
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon:  Padding(
          padding:  EdgeInsets.only(right: 15),
          child: Image.asset('assets/images/arrow down.png',width: 30,),
        ),
        iconSize: 24,
        elevation: 16,
        isExpanded: true,
        underline: SizedBox(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
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
    );
  }
}