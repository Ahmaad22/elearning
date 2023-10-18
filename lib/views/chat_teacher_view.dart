import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/student_home.dart';
import 'package:flutter/material.dart';

class ChatTeacherView extends StatelessWidget {
  const ChatTeacherView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Chat"),

         
          SizedBox(height: 40,)
      ,  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
              ExpandendComp(color: Colors.grey.withOpacity(0.5), image: "Assets/parent.png", title: "Alex "),
            ExpandendComp(color: Colors.grey.withOpacity(0.5), image: "Assets/parent.png", title: "John"),
            ExpandendComp(color: Colors.grey.withOpacity(0.5), image: "Assets/parent.png", title: "Maria")
          ],),
      )
        ],
      ),
    );
  }
}