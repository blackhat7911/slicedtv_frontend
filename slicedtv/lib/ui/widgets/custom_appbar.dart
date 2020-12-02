import 'package:flutter/material.dart';
import 'package:slicedtv/responsive.dart';
import 'package:slicedtv/ui/widgets/navbar_item.dart';
import 'app_title.dart';
import 'custom_button.dart';

class CustomAppBar extends StatelessWidget {

  final navLinks = ["About", "Help", "Premium"];
  
  List<Widget> navItems() {
    return navLinks.map(
      (text) {
        return Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: NavItems(
            title: text,
            press: (){
              print(text);
            },
          ),
        );
      }
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTitle(),
            if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...navItems()..add(
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CustomButton(
                          title: "Login", 
                          color: Colors.grey.withOpacity(0.5), 
                          press: () => print("Login"),
                          leftMargin: 20.0,
                        ),
                        CustomButton(
                          title: "Sign Up", 
                          color: Colors.deepPurple, 
                          press: () => print("Sign Up"),
                          leftMargin: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
            else IconButton(
              icon: Icon(Icons.menu), 
              onPressed: (){}
            )
          ],
        ),
      ),
    );
  }
}

