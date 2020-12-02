import 'package:flutter/material.dart';
import 'package:slicedtv/ui/widgets/custom_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Watch Unlimited Movies,\nTV shows and more with your friends.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20.0,),
          Text(
            "Host a watch party and watch whatever you want,\nwhenever you are with your friends.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 20.0,),
          Text(
            "Explore millions of media content!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 20.0,),
          FittedBox(
            child: Container(
              child: CustomButton(
                title: "Get Started!",
                color: Colors.deepPurple,
                press: () => print('Get Started!'),
                leftMargin: 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}