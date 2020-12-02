import 'package:flutter/material.dart';
import 'dart:html' as html;

extension Cursor on Widget{
  
  static final appContainer = html.window.document.getElementById('app-container');

  Widget get showCursor{
    return MouseRegion(
      child: this,
      onHover: (event){
        appContainer.style.cursor = 'pointer';
      },
      onExit: (event){
        appContainer.style.cursor = 'default';
      },
    );
  }

}