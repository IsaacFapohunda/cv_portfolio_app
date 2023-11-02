import 'package:flutter/cupertino.dart';

import '../constants/appColors.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('EXPERIENCE',
            style: TextStyle(color: black, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Mobile App Developer - ',
                        style: TextStyle(
                          color: grey3,
                          fontSize: 9,
                        ),),

                    ]
                ),),

              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Quadex Technologies ltd.',
                        style: TextStyle(
                          color: black,
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),),

                    ]
                ),),
              SizedBox(
                width: size.width*0.27,
              ),

              Text('[April, 2023]', style: TextStyle(color: grey3,
                  fontSize: 10),)

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● Development of carpooling application to ensure easy transportation and navigation using the Flutterframework',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,

              ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● Consumed RESTful APIs to integrate backend service',
                 style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,

              ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● Collaborated with the backend development team and Product designers using Git manage version controlto ensure integration of UI and functionality, such as real-time data syncing, payment gateways e.t.c',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,

              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● Conducted regular code reviews and implemented the best practices to ensure neat and high quality code with excellent architecture for optimum performance',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,

              ),),
          ),

        ],
      ),
    );
  }
}