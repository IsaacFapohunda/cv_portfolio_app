import 'package:flutter/material.dart';

import '../constants/appColors.dart';


class AppBackButton extends StatelessWidget {
  final bool isAppBar;
  const AppBackButton({Key? key, this.isAppBar = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: grey3,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back,
              color: black,
            ),
          ),
        ),
      ],
    );
  }
}