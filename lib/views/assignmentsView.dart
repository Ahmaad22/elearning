import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/student_home.dart';
import 'package:flutter/material.dart';

class AssignmentsView extends StatelessWidget {
  const AssignmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Assignments")
          ,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 40,),
                ExpandendComp(color: Color.fromARGB(255, 4, 11, 147), image: "Assets/book.png", title: "Test 1"),
                            ExpandendComp(color: Colors.blue, image: "Assets/book.png", title: "Test 2"),
          
                ExpandendComp(color: Colors.grey, image: "Assets/book.png", title: "Test 3")
          
              ],
            ),
          )
        ],
      ),
    );
  }
}