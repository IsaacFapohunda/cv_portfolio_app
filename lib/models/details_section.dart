import 'package:flutter/material.dart';

import '../constants/appColors.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Isaac Fapohunda', style: TextStyle(
                color: black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: size.height*0.007,),
              Text('Mobile App Developer', style: TextStyle(
                color: grey3,
                fontSize: 10,
              ),),
            ],
          ),
          SizedBox(width: size.width*0.05,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'email: ',
                            style: TextStyle(
                              color: grey3,
                              fontSize: 10,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'isaacfeppy@gmail.com',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              decoration: TextDecoration.underline,
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
                            text: 'LinkedIn: ',
                            style: TextStyle(
                              color: grey3,
                              fontSize: 10,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'https://www.linkedin.com/in/isaac-fapohunda-a28996230',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 7,
                              decoration: TextDecoration.underline,
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
                            text: 'GitHub: ',
                            style: TextStyle(
                              color: grey3,
                              fontSize: 10,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'https://github.com/IsaacFapohunda',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              decoration: TextDecoration.underline,
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
                            text: 'Contact: ',
                            style: TextStyle(
                              color: grey3,
                              fontSize: 10,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '+2349097398422',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                            ),),

                        ]
                    ),),

                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}