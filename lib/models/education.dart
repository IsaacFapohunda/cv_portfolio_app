import 'package:flutter/cupertino.dart';

import '../constants/appColors.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('EDUCATION', style: TextStyle(
            color: black,
            fontWeight: FontWeight.bold,
          ),),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Yaba College of Technology,: ',
                        style: TextStyle(
                          color: black,
                          fontSize: 9,
                        ),),
                    ]
                ),),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'OND Mechanical Engineering [Jun. 2016 - Feb. 2018]',
                        style: TextStyle(
                          color: grey3,
                          fontSize: 8,
                        ),),

                    ]
                ),),
            ],
          ),

          Row(
            children: [
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'University of Lagos,: ',
                        style: TextStyle(
                          color: black,
                          fontSize: 9,
                        ),),
                    ]
                ),),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' B.Sc Mechanical Engineering [Jan. 2019 - july. 2023]',
                        style: TextStyle(
                          color: grey3,
                          fontSize: 8,
                        ),),

                    ]
                ),),
            ],
          ),


        ],
      ),
    );
  }
}