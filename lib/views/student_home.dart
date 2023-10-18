import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/views/assignmentsView.dart';
import 'package:elearning/views/sign_up.dart';
import 'package:elearning/views/time_table_view.dart';
import 'package:flutter/material.dart';

class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

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
                  SquareComp(
                    onTap1: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignupView();
                      }));
                    },
                    firstColor: Colors.red,
                    firstImage: "Assets/user.png",
                    firstTitle:  "E-Card",
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
                    firstTitle:  "Holidays",
                    secoundColor: Colors.blue,
                    secoundImage: "Assets/result.png",
                    secoundTitle: "Results",
                  ),SquareComp(
                    firstColor: const Color.fromARGB(255, 64, 230, 70),
                    firstImage: "Assets/assignmentpng.png",
                    firstTitle:  "Assignment",
                    onTap1: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AssignmentsView();
                      }));
                    },
                    secoundColor: const Color.fromARGB(255, 223, 212, 112),
                    secoundImage: "Assets/dolar.png",
                    secoundTitle: "free",
                  ),
                  ExpandendComp(
                    color: Colors.grey,
                    image: "Assets/bus.png",
                    title: "Transportation",
                  ),
                  SquareComp(
                    firstColor:Colors.pink,
                    firstImage: "Assets/exam.png",
                    firstTitle:  "Exams",
                    secoundColor:  Colors.teal,
                    secoundImage: "Assets/book.png",
                    secoundTitle: "E-Book",
                  ),SquareComp(
                    firstColor: Colors.pink[200],
                    firstImage: "Assets/woman.png",
                    firstTitle:  "Parent guide",
                    secoundColor: Colors.red,
                    secoundImage: "Assets/health.png",
                    secoundTitle: "Health tips",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SquareComp extends StatelessWidget {
  const SquareComp(
      {super.key, required this.firstColor, required this.firstImage
      ,required this.firstTitle,required this.secoundColor,required this.secoundImage,required this.secoundTitle,
this.onTap1,this.onTap2

      });
  final dynamic firstColor;
  final dynamic firstImage;
final dynamic firstTitle;
  final dynamic secoundColor;
  final dynamic secoundImage;
final dynamic secoundTitle;
 final void Function()? onTap1;
 final void Function()? onTap2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap1,
            child: Container(
              width: (MediaQuery.of(context).size.width * .5) - 18,
              height: 90,
              color: firstColor,
              child: Column(
          
                children: [
                              SizedBox(height: 10,),
          
                  Image.asset(
                    firstImage,
                    width: 50,
                    height: 50,
                  ),
                  Text(
                   firstTitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 4,),
          GestureDetector(
            onTap: onTap2,
            child: Container(
              width: (MediaQuery.of(context).size.width * .5) - 18,
              height: 90,
              color: secoundColor,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Image.asset(
                    secoundImage,
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    secoundTitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandendComp extends StatelessWidget {
  const ExpandendComp(
      {super.key,
      required this.color,
      required this.image,
      required this.title});
  final Color color;
  final dynamic image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        height: 80,
        width: double.infinity,
        color: color,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
