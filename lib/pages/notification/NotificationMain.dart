import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:swipe_to/swipe_to.dart';

import '../../Appbar.dart';
import '../../static.dart';

class Notificationmain extends StatelessWidget {
  const Notificationmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Center(
              child: Text('Notifications',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: HexColor(headingColor),
                ),
              ),
            ),
            Headlines(
              image: 'assets/images/checktick.png',
              title: 'You have achieved your Step Goal for today',
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Headlines(
              image: 'assets/images/checkpill.png',
              title: 'Remember to take your daily dose of Vitamin D',
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Headlines(
              image: 'assets/images/checkportfel.png',
              title: 'New Weekly Report is availble in Progress section',
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Headlines(
              image: 'assets/images/checklast.png',
              title: 'Finish your Breathing Training. Just 49 % left for today',
            ),
          ],
        ),
      ),
    );
  }
}


class Headlines extends StatelessWidget {
  const Headlines({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(title),
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Deleted $title'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            flex: 1,
            padding: EdgeInsets.symmetric(horizontal: 8),
            spacing: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              image,
              height: 70,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

