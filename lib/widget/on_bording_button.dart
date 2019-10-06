import 'package:challengeuiones/utils/button_cliper.dart';
import 'package:flutter/material.dart';

class OnBordinButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ButtonClipper(),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF9F3CB2),
              Color(0xFFF26567)
            ],
            stops: [
              0.4,
              1.0
            ]
          )
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 45),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),

          ),
        ),
      ),
    );
  }
}
