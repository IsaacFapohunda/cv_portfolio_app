import 'package:flutter/cupertino.dart';

import '../constants/appColors.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SKILLS', style: TextStyle(color: black, fontWeight: FontWeight.bold,),),
          SizedBox(
            height: 5,
          ),
          Text('Dart, Flutter, Python, Java, Firebase, Third-party libraries APIs, OOP, HTML, CSS, Git, Data Structures, Problemsolving skill',
            style: TextStyle(
            fontSize: 10,
          ),),
        ],
      ),
    );
  }
}