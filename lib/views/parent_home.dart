import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/assignmentsView.dart';
import 'package:elearning/views/sign_up.dart';
import 'package:elearning/views/student_home.dart';
import 'package:elearning/views/time_table_view.dart';
import 'package:flutter/material.dart';

class ParentHome extends StatelessWidget {
  const ParentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: "Home"),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ExpandendComp(
                      color: Color.fromARGB(255, 34, 8, 164),
                      image: "Assets/child.png",
                      title: "Children"),
                  SquareComp(
                    onTap1: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignupView();
                      }));
                    },
                    firstColor: Colors.red,
                    firstImage: "Assets/user.png",
                    firstTitle: "E-Card",
                    secoundColor: Colors.orange,
                    secoundImage: "Assets/time.png",
                    secoundTitle: "Time table",
                      onTap2: ()
                     {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return TimeTableView();
                      }));
                    },
                  ),
                  ExpandendComp(
                    color: Color.fromARGB(255, 244, 219, 35),
                    image: "Assets/anouncements.png",
                    title: "Anouncements",
                  ),
                  SquareComp(
                    firstColor: Colors.grey[800],
                    firstImage: "Assets/holiday.png",
                    firstTitle: "Holidays",
                    secoundColor: const Color.fromARGB(255, 64, 230, 70),
                    secoundImage: "Assets/assignmentpng.png",
                    secoundTitle: "Assignment",
                      onTap2: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                      return AssignmentsView();
                     }));
                    },
                  ),
                  ExpandendComp(
                    color: Colors.grey,
                    image: "Assets/bus.png",
                    title: "Transportation",
                  ),
                  SquareComp(
                    firstColor: Colors.pink[200],
                    firstImage: "Assets/woman.png",
                    firstTitle: "Parent guide",
                    secoundColor: Colors.red,
                    secoundImage: "Assets/health.png",
                    secoundTitle: "Health tips",
                  ),
                  ExpandendComp(
                      color: Colors.teal,
                      image: "Assets/offers.png",
                      title: "Offers")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
