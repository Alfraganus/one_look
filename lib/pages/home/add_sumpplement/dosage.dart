import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DosageFormWidget extends StatefulWidget {
  @override
  _DosageFormWidgetState createState() => _DosageFormWidgetState();
}

class _DosageFormWidgetState extends State<DosageFormWidget> {
  String selectedForm = "Pill";
  final List<Map<String, dynamic>> supplementForms = [
    { "label": "1", "image":"assets/images/form icon w.png"},
    {"label": "2","image":"assets/images/form icon w2.png"},
    {"label": "3","image":"assets/images/form icon w3.png"},
    {"label": "4","image":"assets/images/form icon w4.png"},
    {"label": "5","image":"assets/images/form icon w4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dosage (Times a day)",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 10),
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: supplementForms.map((form) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedForm = form['label'];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 70,
                      // padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(50),
                          border: selectedForm == form['label'] ? Border.all(
                            color:  HexColor("#585CE5"),
                            width: 2
                          ) : null,
                          color: HexColor("#F0F1F9")
                      ),
                      // height: 82,
                      child: Center(
                        child: Text(form['label'], style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
