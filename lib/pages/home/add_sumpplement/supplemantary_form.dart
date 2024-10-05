import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SupplementFormWidget extends StatefulWidget {
  @override
  _SupplementFormWidgetState createState() => _SupplementFormWidgetState();
}

class _SupplementFormWidgetState extends State<SupplementFormWidget> {
  String selectedForm = "Pill";
  final List<Map<String, dynamic>> supplementForms = [
    { "label": "Pill", "image":"assets/images/form icon w.png"},
    {"label": "Tablet","image":"assets/images/form icon w2.png"},
    {"label": "Sachet","image":"assets/images/form icon w3.png"},
    {"label": "Drops","image":"assets/images/form icon w4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Supplement Form",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
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
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          // padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius:  selectedForm == form['label'] ?BorderRadius.circular(25) : null,
                              border: selectedForm == form['label'] ? Border.all(
                                  color:  HexColor("#585CE5"),
                                  width: 2
                              ) : null,
                            color: selectedForm == form['label'] ? HexColor("#585CE5") : null
                          ),
                          height: 84,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                form['image'],
                               height: 80,
                              ),
                              // Text(form['label']),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(form['label'], style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ],
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
