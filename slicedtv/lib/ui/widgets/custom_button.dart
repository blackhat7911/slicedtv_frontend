import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  const CustomButton({
    Key key, 
    this.title, 
    this.color, 
    this.press, 
    this.leftMargin,
  }) : super(key: key);

  final String title;
  final Color color;
  final Function press;
  final double leftMargin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: leftMargin),
        color: color,
        child: MaterialButton(
          color: Colors.transparent,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          onPressed: press,
        ),
      ),
    );
  }
}

