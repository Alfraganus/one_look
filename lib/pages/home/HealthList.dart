import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HealthStatsRow extends StatelessWidget {
  const HealthStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            // Adjust the value as needed
            child: HealthStatsList(
              image: 'assets/images/breath rate bgr.png',
              title: 'Breath Rate',
              statisticValue: '12 BrPM',
              color: "#D0D1FF",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            // Adjust the value as needed
            child: HealthStatsList(
              image: 'assets/images/heart rate bgr.png',
              title: 'Heart Rate',
              statisticValue: '68 BPM',
              color: "#C9EBED",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            // Adjust the value as needed
            child: HealthStatsList(
              image: 'assets/images/blood pressure bgr.png',
              title: 'Blood Pressure',
              statisticValue: '122 / 87',
              color: "#F5DEDE",
            ),
          ),
        ],
      ),
    );
  }
}

class HealthStatsList extends StatelessWidget {
  final String image;
  final String title;
  final String color;
  final String statisticValue;

  const HealthStatsList(
      {super.key,
      required this.image,
      required this.title,
      required this.statisticValue,
      required this.color});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      width: width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: HexColor(color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              // #A1A3F6
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  height: 60,
                ),
                Image.asset(
                  'assets/images/arrow long right.png',
                  height: 45,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: HexColor("#415371")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              statisticValue,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#0F2851")),
            ),
          ),
        ],
      ),
    );
  }
}
