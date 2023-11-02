import 'package:flutter/cupertino.dart';

import '../constants/appColors.dart';

class PersonalProjects extends StatelessWidget {
  const PersonalProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('PERSONAL PROJECTS',
            style: TextStyle(color: black, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 8,
          ),
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                    text: 'YourTodo App',
                    style: TextStyle(
                      color: grey3,
                      fontSize: 9,
                    ),),

                ]
            ),),
          SizedBox(
            height: 5,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● An app, used to keep track and update on tasks, built with an organizational concep',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,

              ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● Implementation of local data storage and third party libraries',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,

              ),),
          ),
          SizedBox(height: 8,),

          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                    text: 'FlashChat App',
                    style: TextStyle(
                      color: grey3,
                      fontSize: 9,
                    ),),

                ]
            ),),

          SizedBox(
            height: 5,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text('● Firebase application based, messaging, authentication, database, real time data real-time data syncing',
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