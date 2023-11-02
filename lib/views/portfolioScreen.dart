import 'package:cv_project/globalFiles/AppButtons.dart';
import 'package:cv_project/splash/splash1.dart';
import 'package:cv_project/views/gitHubApiRepo.dart';
import 'package:flutter/material.dart';

import '../constants/appColors.dart';
import '../globalFiles/borderButton.dart';
import '../models/certifications.dart';
import '../models/details_section.dart';
import '../models/education.dart';
import '../models/experience.dart';
import '../models/personal_projects.dart';
import '../models/skills.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BorderButton(
          backgroundColor: white,
          color: black,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Splash(),
            ));
          },
          Icons: Icons.arrow_back,
          size: 20,
        ),
      ),
      title: Text(
        "Welcome to My Porfolio",
        style: TextStyle(
          color: black,
        ),
      ),
      centerTitle: true,
    ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(),
            Container(
              color: white,
    height: size.height*0.75,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DetailsSection(),
                  Education(),
                Skills(),
                Experience(),
                PersonalProjects(),
                Certifications(),
                ],
              )





            ),
            SizedBox(height: 14,),
            AppButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const GitHubApiRepo(),
              ));
            }, label: 'See GitHub Repositories',
            textColor: white,)
          ],
        ),
      ),
    );
  }
}