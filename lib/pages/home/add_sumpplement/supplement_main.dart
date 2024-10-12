import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:one_look/pages/home/add_sumpplement/supplemantary_formGetX.dart';
import '../../../Appbar.dart';
import '../../../core/DropdownGetX.dart';
import '../../../static.dart';
import 'ReminderCheck.dart';
import 'dosage.dart';

class SupplementMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap:() {
              Get.toNamed('/');
            },
            child: Padding(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              Center(
                child: Text(
                  "Supplement Form",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SupplemantaryFormgetx(selectedForm: 'Pill',supplementForms: [
                { "label": "Pill", "image":"assets/images/form icon w.png"},
                {"label": "Tablet","image":"assets/images/form icon w2.png"},
                {"label": "Sachet","image":"assets/images/form icon w3.png"},
                {"label": "Drops","image":"assets/images/form icon w4.png"},
              ],),
              SizedBox(height:10),
              Divider(),
              SizedBox(height:10),
              DosageFormWidget(),
              SizedBox(height:10),
              Divider(),
              SizedBox(height:10),
              Text(
                "Frequency",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height:10),
              DropdownGetX(list: ['Every day', 'Every week', 'Every month', 'Every year'],),
              SizedBox(height:20),
              Text(
                "Duration",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height:10),
              DropdownGetX(list: ['30 days', '40 days', '50 days', '60 days'],),
              SizedBox(height:20),
              Text(
                "Time of day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SupplemantaryFormgetx(selectedForm: 'Morning',supplementForms: [
                { "label": "Morning", "image":"assets/images/form_star icon w.png"},
                {"label": "Afternoon","image":"assets/images/form_star icon w1.png"},
                {"label": "Evening","image":"assets/images/form_star icon w3.png"},
                {"label": "Night","image":"assets/images/form_star icon w4.png"},
              ],),
              SizedBox(height:50),
              Text(
                "Taking with meals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height:10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed:() {},
                        child: Text("Before meal",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ),),
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(HexColor("#F0F1F9")),
                      ),
                    ),   TextButton(
                      onPressed:() {},
                      child: Text("After meal",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(HexColor("#F0F1F9")),
                      ),
                    ),
                    TextButton(
                      onPressed:() {},
                      child: Text("During the meal",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(HexColor("#F0F1F9")),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height:40),
              Text(
                "Set reminder",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              SizedBox(height:20), //
              Remindercheck(title: "Before the sheduled time"),
              SizedBox(height:10),
              Divider(),
              Remindercheck(title: "After exceeding the time"),
              SizedBox(height:20),
              SizedBox(
                width: double.infinity,
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed:(){
                      Get.toNamed('/');
                    },
                        child: Text("Add Supplement", style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),)
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
