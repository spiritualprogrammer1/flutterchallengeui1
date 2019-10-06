import 'package:challengeuiones/utils/login_image_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper:LoginImageClipper() ,
                  child: Container(
                   width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 2,
                          right: -120,
                          bottom: -280,
//                         left: 0,
                          child: Image.asset("assets/image.jpg", fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            height: 340,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE2B0FF).withOpacity(.8),
                                  Color(0xFF9F44D3).withOpacity(.05)
                                ],
                                  begin: Alignment.bottomCenter,
                                end: Alignment.topCenter
                              )
                            ),
                          ),

                        ),
                        Positioned(
                          left: 40,
                          top: 50,
                          child: Text("spiri",style: TextStyle(fontSize: 50,color: Colors.white,fontFamily: "Poppins",fontWeight: FontWeight.w500),),
                        ),
                        Positioned(
                          left: 72,
                          top: 90,
                          child: Text("tual",style: TextStyle(fontSize: 50,color: Colors.white,fontFamily: "Poppins",fontWeight: FontWeight.w600),),
                        ),
                        Positioned(
                          left: 30,
                          top: 158,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Progra",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w900
                                  )
                                ),
                                TextSpan(
                                    text: "mmer",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                    )
                                )
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 0,
                  child: Text("Login", style: TextStyle(fontSize: 40,color:Color(0xFFCBCBCB),fontWeight: FontWeight.w900),),
                )
              ],
            ),
            SizedBox(height: 25,),
            buildUserNme(),
            SizedBox(height: 20,),
            buildPassword(),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: FlatButton(
                    child: Text(
                      "inscrivez vous",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Poppins",
                        color: Colors.black
                      ),
                    ),
                    onPressed: (){},
                  ),

                )
              ],
            )

          ],
        ),
      ),
    );
  }
}

Widget buildUserNme(){
  return Container(
    width: double.infinity,
    height: 48,
   margin: EdgeInsets.symmetric(horizontal: 30),
   decoration: BoxDecoration(
     color: Color(0xFFE7E7E7),
     borderRadius: BorderRadius.circular(40),
     boxShadow: [
       BoxShadow(
         color: Colors.black12,
         blurRadius: 2,
         offset: Offset(0,4)

       )
     ]
   ),
    child: Padding(
      padding: EdgeInsets.only(top: 4,left: 24,right: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: "username",
          hintStyle: TextStyle(
            fontSize: 16,
            fontFamily: "Poppins"
          ),
          enabledBorder: InputBorder.none,
          suffixIcon: Icon(Icons.person)
        ),
      ),
    ),
  );
}


Widget buildPassword(){
  return Container(
    width: double.infinity,
    height: 58,
    margin: EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0,4)

          )
        ]
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 4,left: 24,right: 16),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(
                fontSize: 16,
                fontFamily: "Poppins"
            ),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(Icons.remove_red_eye)
        ),
      ),
    ),
  );
}