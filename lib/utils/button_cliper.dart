import 'package:flutter/material.dart';

class ButtonClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width , size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}