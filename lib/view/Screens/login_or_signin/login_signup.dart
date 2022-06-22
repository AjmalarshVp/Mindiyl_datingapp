


import 'dart:ui';

import 'package:dating_app/View/Screens/homescreen/homepage.dart';
import 'package:dating_app/View/Screens/firstscreen/login_screen.dart';
import 'package:dating_app/View/Screens/login/login_page.dart';
import 'package:dating_app/View/Screens/signup/signup.dart';
import 'package:dating_app/common_widget/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:animate_do/animate_do.dart';





class sign_login extends StatefulWidget {
  const sign_login({ Key? key }) : super(key: key);

  @override
  State<sign_login> createState() => _sign_loginState();
}

class _sign_loginState extends State<sign_login> {
  @override
   Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
            children: [
               Container(
                        height: size.height,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                              "assets/images/imagepicking/coupla.jpg"),
                          fit: BoxFit.cover,
                        )),
                        child: new BackdropFilter(
                          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: new Container(
                            decoration:
                                new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                          ),
                        ),
                      ),
              Padding(
        padding: EdgeInsets.all(6.w),
        child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "Mindiyal",
                    style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "welcomes you",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.pink),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  // Center(
                  //   child: Stack(
                  //     fit: StackFit.loose,
                  //     children: [
                  //       Lottie.asset("assets/Lottie/81715-dating-app-concept.json",height: 40.h,
                  //       //width: 40.w,
                  //       fit: BoxFit.cover)
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 35.h,

                  ),
                  
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FadeInLeft(
                          child: Animation_button(onpress: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage_Animated(),));
                          }, txt: 'Login',
                          lsp: 1,fb: FontWeight.bold,fs: 18,txtclr: Colors.white
                          
                          )
                         
                        ),
                        SizedBox(height: 20,),
                        FadeInRight(
                            child: Animation_button(onpress: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                            }, txt: 'Signup',lsp: 1,fb: FontWeight.bold,fs: 18,txtclr: Colors.white,
                              
                            )
                          
                                )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 7.h,
                  // ),
                  // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: RichText(
                  //       text: TextSpan(children: [
                  //     TextSpan(
                  //         text: "Sign In as ",
                  //         style: TextStyle(
                  //             fontSize: 12.sp,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.black)),
                  //     TextSpan(
                  //         text: "Admin",
                  //         style: TextStyle(
                  //             fontSize: 12.sp,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.blue),
                             
                  //         recognizer: TapGestureRecognizer()
                          
                  //         ..onTap = () {
                            
                                 
                  //           })
                  //   ])),
                  // )
                ],
              ),
        ),
      ),
            ],
          )),
    );
  }
}

