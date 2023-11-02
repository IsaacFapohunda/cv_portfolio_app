import 'package:cv_project/views/loginScreen.dart';
import 'package:flutter/material.dart';

import '../constants/appColors.dart';
import '../constants/appImages/imagesLinks.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigat();
  }

  navigat() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
   Size size =  MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: appColor,
        body: Center(
          child: Container(
              width: size.width*0.7,
              height: size.height*0.7,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(portfolio1),
                  fit: BoxFit.fitWidth,
                ),
              )),
        ));
  }
}