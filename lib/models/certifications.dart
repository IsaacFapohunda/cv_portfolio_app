import 'package:flutter/cupertino.dart';

import '../constants/appColors.dart';

class Certifications extends StatelessWidget {
  const Certifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('CERTIFICATIONS',
            style: TextStyle(color: black, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'HackerRank',
                            style: TextStyle(
                              color: grey3,
                              fontSize: 9,
                            ),),

                        ]
                    ),),
                  Text('Python (Basic) Certificate',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,

                    ),),
                ],
              ),
              Text('[Nov, 2022]', style: TextStyle(color: grey3, fontSize: 10),)
            ],
          ),
          SizedBox(
            height: 19,
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Coursera',
                            style: TextStyle(
                              color: grey3,
                              fontSize: 9,
                            ),),

                        ]
                    ),),
                  Text('Introduction to Back-End Development',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,

                    ),),
                ],
              ),
              Text('[Jan, 2022]', style: TextStyle(color: grey3, fontSize: 10),)
            ],
          ),



        ],
      ),
    );
  }
}