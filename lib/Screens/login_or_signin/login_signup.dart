


import 'package:dating_app/Screens/homescreen/homepage.dart';
import 'package:dating_app/Screens/firstscreen/login_screen.dart';
import 'package:dating_app/Screens/login/login_page.dart';
import 'package:dating_app/Screens/signup/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:animate_do/animate_do.dart';

import '../../common_widget/button.dart';

import '../../Screen/onboarding_Screen/onbording_screen.dart';

class sign_login extends StatefulWidget {
  const sign_login({ Key? key }) : super(key: key);

  @override
  State<sign_login> createState() => _sign_loginState();
}

class _sign_loginState extends State<sign_login> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
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
              Center(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Lottie.asset("assets/Lottie/81715-dating-app-concept.json",height: 40.h,
                    //width: 40.w,
                    fit: BoxFit.cover)
                  ],
                ),
              ),
              // SizedBox(
              //   height: 9.h,
              // ),
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
              SizedBox(
                height: 7.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Sign In as ",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: "Admin",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                         
                      recognizer: TapGestureRecognizer()
                      
                      ..onTap = () {
                        
                             
                        })
                ])),
              )
            ],
          ),
        ),
      )),
    );
  }
}

