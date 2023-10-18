import 'package:elearning/ConstsColor/constcolor.dart';
import 'package:elearning/Customs/custom_app_bar.dart';
import 'package:elearning/Customs/custom_divider.dart';
import 'package:elearning/Customs/profile_options.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            
            title: 'Settings',
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 2 * 24,
            decoration: BoxDecoration(
              border: Border.all(
                color: ConstColors.greyColor.withOpacity(0.1),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ProfileOptions(
                  icon:Icon( Icons.notifications),
                  text: 'Notifications',
                  onPressed: () {
                  },
                ),
                const CustomDivider(),
               
                
                ProfileOptions(
                  icon: Icon(Icons.security),
                  text: 'Legal and Policies',
                  onPressed: () {
                  },
                ),
                const CustomDivider(),
                ProfileOptions(
                  icon: Icon(Icons.question_mark_outlined),
                  text: 'Help & Feedback',
                  onPressed: () {},
                ),
                const CustomDivider(),
                ProfileOptions(
                  icon: Icon(Icons.info_outline),
                  text: 'About Us',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
         
        ],
      ),
    );
  }
}