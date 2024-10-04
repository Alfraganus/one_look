import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupplementFormWidget extends StatefulWidget {
  @override
  _SupplementFormWidgetState createState() => _SupplementFormWidgetState();
}

class _SupplementFormWidgetState extends State<SupplementFormWidget> {
  String selectedForm = "Pill";
  final List<Map<String, dynamic>> supplementForms = [
    {"icon": Icons.medication, "label": "Pill"},
    {"icon": Icons.tablet_mac, "label": "Tablet"},
    {"icon": Icons.scatter_plot, "label": "Sachet"},
    {"icon": Icons.opacity, "label": "Drops"},
    {"icon": Icons.sports_soccer, "label": "Spoon"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Supplement Form",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 10),
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: supplementForms.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedForm = supplementForms[index]['label'];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: selectedForm == supplementForms[index]['label']
                            ? Colors.blue.shade100
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            supplementForms[index]['icon'],
                            size: 30,
                            color:
                                selectedForm == supplementForms[index]['label']
                                    ? Colors.blue
                                    : Colors.grey,
                          ),
                          SizedBox(height: 5),
                          Text(supplementForms[index]['label']),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
