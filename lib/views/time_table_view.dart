import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/Customs/custom_divider.dart';
import 'package:flutter/material.dart';

class TimeTableView extends StatelessWidget {
  const TimeTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 18, 18),
        body: SingleChildScrollView(
          child: Column(children: [
            CustomAppBar(title: "Chat"),
            SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    LectureComp(),
                    SizedBox(height: 16,),
                     LectureComp(),
                    SizedBox(height: 16,), LectureComp(),
                    SizedBox(height: 16,), LectureComp(),
                    SizedBox(height: 16,), LectureComp(),
                    SizedBox(height: 16,),
                  ],
                ))
          ]),
        ));
  }
}

class LectureComp extends StatelessWidget {
  const LectureComp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 40, 39, 39),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lecture 1",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Standart 1A",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomDivider(),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "12:00 Pm to 14 Pm",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            )
            
          ],
        ),
      ),
    );
  }
}
