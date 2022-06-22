import 'dart:ui';

import 'package:dating_app/Controller/APi/model/get.dart';
import 'package:dating_app/Controller/getxcontroller.dart';
import 'package:dating_app/View/Screens/homescreen/homepage.dart';
import 'package:dating_app/Screen/Login_Screen/Gmail_login.dart';
import 'package:dating_app/common_widget/textstle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';


import '../../../common_widget/button.dart';
import '../login_or_signin/login_signup.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final controller = Get.put(Api());
     
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        
        children: [
          Container(
                        height: size.height,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                              "assets/images/imagepicking/background.jpg"),
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
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   child: Lottie.network(
                //       "https://assets1.lottiefiles.com/packages/lf20_we4yddwi.json",
                //       fit: BoxFit.contain,
                //       width: 200.w,
                //       height: 300.h),
                //   height: 300,
                  
                // ),
                SizedBox(height: 30,),
                Text_custum(
                  txt: "Lets get closer",
                  clr: Colors.white,
                  fs: 20,
                  fw: FontWeight.w600,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The best place to meet your future partner",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Animation_button(onpress: () {
               // controller.fetch();
                  Future.delayed(const Duration(milliseconds: 500), () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => sign_login(),
                          ));
                    });
                  });
                }, txt: 'Next',txtclr: Colors.white,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
