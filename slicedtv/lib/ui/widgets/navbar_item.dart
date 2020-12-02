import 'package:flutter/material.dart';

class NavItems extends StatelessWidget { 

  const NavItems({
    Key key, 
    this.title, 
    this.press
    }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: GestureDetector(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: press,
      ),
    );
  }
}