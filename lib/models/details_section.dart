import 'package:flutter/material.dart';

import '../constants/appColors.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: white,
      height: size.height*0.3,
      width: size.width,
      child:
      Row(
        children: [
          const Column(
            children: [
              Text('Isaac Fapohunda'),
              Text('Mobile App Developer'),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'email: ',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'isaacfeppy@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                ],
              ),

              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'LinkedIn: ',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'https://www.linkedin.com/in/isaac-fapohunda-a28996230',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                ],
              ),

              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'GitHub: ',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'https://github.com/IsaacFapohunda',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                ],
              ),

              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Contact: ',
                            style: TextStyle(
                              color: Colors.black,
                            ),),

                        ]
                    ),),

                  RichText(
                    text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '+2349097398422',
                            style: TextStyle(
                              color: Colors.black,
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