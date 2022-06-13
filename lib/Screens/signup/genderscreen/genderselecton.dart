// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:dating_app/Screens/firstscreen/login_screen.dart';
import 'package:dating_app/Screens/login_or_signin/login_signup.dart';
import 'package:dating_app/Screens/signup/genderpreferscreen/lookinggender.dart';
import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:animate_do/animate_do.dart';

import '../../../common_widget/button.dart';

class Gender_Selection extends StatefulWidget {
  const Gender_Selection({Key? key}) : super(key: key);

  @override
  State<Gender_Selection> createState() => _Gender_SelectionState();
}

bool genterb = false;

class _Gender_SelectionState extends State<Gender_Selection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String genter = 'male';
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          
          child: Stack(
            children: [
              Container(
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                   imageurl      ),
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
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Mindiyal",
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 24.sp, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "Select Your Gender",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Center(
                      child: Stack(
                        fit: StackFit.loose,
                        children: [
                          Image.asset("assets/Signupscreen/gender2.jpg",
                              height: 20.h,
                              //width: 40.w,
                              fit: BoxFit.cover)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.w, right: 0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeInLeft(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  genter = 'male';
                                  if (genterb) {
                                    genterb = false;
                                  } else {
                                    genterb = true;
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Opacity(
                                      opacity: genterb ? 0.5 : 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            color: Color(0xFFFD0E42),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/male.png"))),
                                        width: 20.h,
                                        height: 36.w,
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: genterb
                                            ? Colors.grey
                                            : Colors.blue),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInRight(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  genter = 'Femal';
                                  if (genterb) {
                                    genterb = false;
                                  } else {
                                    genterb = true;
                                  }
                                });
                              },
                              child: Column(
                                children: [
                                  Opacity(
                                      opacity: !genterb ? 0.5 : 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            color: Color(0xFFFD0E42),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Signupscreen/femaleavathar3.jpg"),fit: BoxFit.cover)),
                                        width: 20.h,
                                        height: 36.w,
                                      )),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: !genterb
                                            ? Colors.grey
                                            : Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Animation_button(
                        onpress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Looking_gender(),));
                        },
                        //txt: "",
                        txtclr: Colors.white,
                        fb: FontWeight.bold,
                        fs: 18, txt: 'Next',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
