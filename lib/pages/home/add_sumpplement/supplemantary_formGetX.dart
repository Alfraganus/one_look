import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:one_look/pages/home/add_sumpplement/supplemantary_formLogic.dart';


class SupplemantaryFormgetx extends StatelessWidget {
  const SupplemantaryFormgetx({super.key, required this.selectedForm, required this.supplementForms});
  final String selectedForm ;
  final List<Map<String, dynamic>> supplementForms;
  @override
  Widget build(BuildContext context) {

    var controller = Get.put(SupplemantaryFormlogic(selectedForm),tag:selectedForm);

    return Obx(() => Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10),
          Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: supplementForms.map((form) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.changeIndex(form['label']);
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius:  controller.selectedValue.value == form['label'] ?BorderRadius.circular(25) : null,
                              border: controller.selectedValue.value == form['label'] ? Border.all(
                                  color:  HexColor("#585CE5"),
                                  width: 2
                              ) : null,
                          ),
                          // height: 84,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                form['image'],
                                height: 75,
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
    )
    );
  }
}
