import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/student_home.dart';
import 'package:flutter/material.dart';

class ChatParentView extends StatelessWidget {
  const ChatParentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Chat"),

         
          SizedBox(height: 40,)
      ,  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
         
       ExpandendComp(color: Colors.grey.withOpacity(0.5), image: "Assets/teacher.png", title: "Teacher 1")
       ,         ExpandendComp(color: Colors.grey.withOpacity(0.5), image: "Assets/teacher.png", title: "Teacher 2")
      ,          ExpandendComp(color: Colors.grey.withOpacity(0.5), image: "Assets/teacher.png", title: "Teacher 3")
      
          ],),
      )
        ],
      ),
    );
  }
}