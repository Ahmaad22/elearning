import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/Customs/custom_main_button.dart';
import 'package:elearning/Customs/custom_text_form_field.dart';
import 'package:elearning/views/type_view.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(title: "Profile"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Image.asset(
                    "Assets/students.png",
                    height: 150,
                    width: 150,
                  ),
                  CustomTextFormField(
                      obscureText: false, isPassword: false, lable: "Name"),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                      obscureText: false, isPassword: false, lable: "Password"),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                      obscureText: false, isPassword: false, lable: "Roll no"),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                      obscureText: false, isPassword: false, lable: "Birth date"),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                      obscureText: false,
                      isPassword: false,
                      lable: "Mobile number"),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextFormField(
                      obscureText: false, isPassword: false, lable: "Blood group"),
                  SizedBox(
                    height: 32,
                  ),
                  CustomMainButton(text: "Sign up", onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return TypeView();
                    }));
                  }),
                   SizedBox(
                    height: 50,
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
