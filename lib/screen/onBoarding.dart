import 'package:challengeuiones/utils/OnBoardingImageClipper.dart';
import 'package:challengeuiones/widget/on_bording_button.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: OnBoardingImageClippers(),
            child: Container(
              width: double.infinity,
              height: 650,
              child: Stack(
            children: <Widget>[
              Positioned(
                left: -370,
                top: -340,
                bottom: 0,
                child: Image.asset("assets/image.jpg",
                fit: BoxFit.cover,
                  width: 820,
                  height: 1470,

                ),

              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  /********double inifity : aussi grand que l ecran me le permet******************/
                  width: double.infinity,
                  height: 340,
                  decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: [
                       Color(0XFFE2B0FF).withOpacity(.8),
                       Color(0XFF9F44D3).withOpacity(.05),
                     ],
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter
                   )
                  ),
                ),
              ),
              Positioned(
                right:40 ,
                top: 60,
                child: Text("Spiri",style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w900
                ),),
              ),
              Positioned(
                top: 96,
                right: 28,
                child: Text('tual',style: TextStyle( fontSize: 50,color: Colors.white,fontFamily: "Poppins",fontWeight: FontWeight.w900),),
              )
            ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: " spiritual",
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w900
                        )
                      ),
                      TextSpan(
                        text: " programme",
                        style: TextStyle(
                          fontSize: 26,
                          color: Color(0xFF4A4A4A),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300
                        )

                      )
                    ]
                  ) ,
                ),
              ),
              GestureDetector(
                onTap: (){
                  MaterialPageRoute route = MaterialPageRoute(builder: (_)=> LoginPage());
                  Navigator.of(context).push(route);
                },
                child: OnBordinButton(),)
            ],
          )
        ],
      ) ,
    );
  }
}
