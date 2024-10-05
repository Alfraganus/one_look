import 'package:flutter/material.dart';
import 'package:one_look/pages/home/add_sumpplement/supplemantary_form.dart';

import '../../../Appbar.dart';
import '../../../static.dart';
import 'dosage.dart';

class SupplementMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                'assets/images/close.png', // Path to your notification icon
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Add Supplement ',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: HexColor(headingColor)),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Supplement Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Type name of the supplement",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height:20),
            Divider(),
            SizedBox(height:10),
            SupplementFormWidget(),
            SizedBox(height:10),
            Divider(),
            SizedBox(height:10),
            DosageFormWidget()
          ],
        ),
      ),
    );
  }
}
