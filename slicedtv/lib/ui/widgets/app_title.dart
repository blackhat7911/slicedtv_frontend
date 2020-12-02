import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "sliced.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
            )
          ),
          TextSpan(
            text: "tv",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
            )
          ),
        ]
      )
    );
  }
}