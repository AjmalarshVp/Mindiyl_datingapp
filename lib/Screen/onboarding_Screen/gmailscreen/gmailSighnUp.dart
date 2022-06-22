

import 'package:dating_app/View/Screens/homescreen/homepage.dart';
import 'package:dating_app/View/Screens/firstscreen/login_screen.dart';
import 'package:dating_app/common_widget/textformfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:animate_do/animate_do.dart';

import '../../../common_widget/button.dart';



class Gmail_sighnup extends StatefulWidget {
  const Gmail_sighnup({ Key? key }) : super(key: key);

  @override
  State<Gmail_sighnup> createState() => _Gmail_sighnupState();
}

class _Gmail_sighnupState extends State<Gmail_sighnup> {
  TextEditingController usernamecontroller =TextEditingController();

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
                height: 2.h,
              ),
              Text(
                "Mindiyal",
                style: TextStyle(fontSize: 29.sp, fontWeight: FontWeight.w900),
              ),
              Text(
                "welcomes you",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.pink),
              ),
              SizedBox(
                height: 2.h,
              ),
              Lottie.asset("assets/Lottie/94879-lover-people-sitting-on-garden-banch.json",height: 25.h,
            //  width: 40.w,
              fit: BoxFit.cover),
              // SizedBox(
              //   height: 1.h,
              // ),
              Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInLeft(
                      child:
                      CustomTextformfield(controller: usernamecontroller, validator: (Value){},hint: " Enter User Name",prefixicon: Icon(Icons.person),),

                     
                    ),
                    SizedBox(height: 12,),
                       FadeInLeft(
                      child:
                      CustomTextformfield(controller: usernamecontroller, validator: (Value){},hint: "Password",prefixicon: Icon(Icons.key_sharp,)),
                      
                     
                    ),SizedBox(height: 12,),
                       FadeInRight(
                      child:
                      CustomTextformfield(controller: usernamecontroller, validator: (Value){},hint: "Conifirm Password",prefixicon: Icon(Icons.key_sharp,),
                      
                      ) 
                    ),
                    //SizedBox(height: 14,),
                    SizedBox(height: 29,),
                    FadeInRight(
                        child: Animation_button(onpress: (){
                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen(),));
                        }, txt: 'Next',lsp: 1,fb: FontWeight.bold,fs: 18,txtclr: Colors.white,
                          
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
      )),
    );
  }
}

