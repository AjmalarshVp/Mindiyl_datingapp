// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:dating_app/View/Screens/signup/genderscreen/genderselecton.dart';
import 'package:dating_app/common_widget/textstle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../common_widget/button.dart';



class ImageTaking extends StatefulWidget {
  const ImageTaking({Key? key}) : super(key: key);

  @override
  State<ImageTaking> createState() => _ImageTakingState();
}

class _ImageTakingState extends State<ImageTaking> {
  bool camera = false;
  bool imagedata = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/imagepicking/background.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
            //  child: BackdropFilter(
            //         filter: new ImageFilter.blur(sigmaX: 0.0, sigmaY: -30.0),
            //         child: new Container(
            //           decoration: new BoxDecoration(
            //               color: Colors.pink.withOpacity(0.1)),
            //         ),
            //       ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("assets/images/imagepicking/dani2.jpg"),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),

              height: 40.h,
              child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeInLeft(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                // genter = 'male';
                                if (camera) {
                                  camera = false;
                                } else {
                                  camera = true;
                                }
                              });
                            },
                            child: Column(
                              children: [
                                Opacity(
                                  opacity: camera ? 0.5 : 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        color: Color(0xFFFD0E42),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/imagepicking/camera2.png"))),
                                    width: 30.w,
                                    height: 15.h,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Camera',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          camera ? Colors.grey : Colors.white),
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
                                //  genter = 'Femal';
                                if (camera) {
                                  camera = false;
                                } else {
                                  camera = true;
                                }
                              });
                            },
                            child: Column(
                              children: [
                                Opacity(
                                  opacity: !camera ? 0.5 : 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        color: Color(0xFFFD0E42),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/imagepicking/gallery3-removebg-preview.png"))),
                                    width: 15.h,
                                    height: 30.w,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  'Gallery',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          !camera ? Colors.grey : Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                  CustomButton(text: 'Next', onPressed: () { 
                     Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Gender_Selection(),
                                          ));
                   },)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Align(
                alignment: Alignment.topCenter,
                child: imagedata == true
                    ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/imagepicking/dani2.jpg"),
                                fit: BoxFit.cover)),
                        width: 87.w,
                        height: 55.h,
                      )
                    : Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.transparent,
                          // image: DecorationImage(
                          //     image: AssetImage("assets/images/imagepicking/background.jpg"),fit: BoxFit.cover)
                        ),
                        width: 87.w,
                        height: 55.h,
                      )),
          ),
        ],
      ),
    );
  }
}
