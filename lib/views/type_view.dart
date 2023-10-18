import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/widgets/bottom_navigation_bar_parent.dart';
import 'package:elearning/widgets/bottom_navigation_bar_student.dart';
import 'package:elearning/widgets/bottom_navigation_bar_teacher.dart';
import 'package:flutter/material.dart';

class TypeView extends StatelessWidget {
  const TypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Welcome"),
         SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                   GestureDetector(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CustomBottomNavigationBarStudent();
                   }));
                  },
                   child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Color(0xFF414141))),
                  child: Center(
                    child: Text(
                      "Student",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
             ),  
                          SizedBox(height: 48,),

              GestureDetector(
                   onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CustomBottomNavigationBarParent();
                   }));
                  },
                   child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Color(0xFF414141))),
                  child: Center(
                    child: Text(
                      "Parent",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
             ),
             SizedBox(height: 48,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CustomBottomNavigationBarTeacher();
                   }));
                  },
                   child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Color(0xFF414141))),
                  child: Center(
                    child: Text(
                      "Teacher",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
             ),
              ],
            ),
          )
        ],
      ),
    );
  }
}