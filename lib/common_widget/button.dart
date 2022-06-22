import 'dart:ffi';

import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:sizer/sizer.dart';

class Animation_button extends StatelessWidget {
 VoidCallback onpress;

  String txt;

  double? lsp;

  dynamic fgcl;

  dynamic txtclr;

  dynamic bgclr;

  dynamic Borderclr;

  dynamic fb;
  double? fs;

  Animation_button(
      {Key? key,
      required this.onpress,
      required this.txt,
      this.txtclr,
      this.Borderclr,
      this.bgclr,
      this.fb,
      this.fs,
      this.fgcl,
      this.lsp})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onPress: onpress,
      height: 60,
      width: 500,
      text: txt,
      //  isReverse: true,
      //selectedTextColor: txtclr??Colors.white,
      transitionType: TransitionType.LEFT_TO_RIGHT,

      textStyle: TextStyle(fontWeight: fb, letterSpacing: lsp,color: txtclr,fontSize: fs),
      selectedBackgroundColor: fgcl ?? Colors.white,
      backgroundColor: bgclr ?? Colors.pink,
      borderColor: Borderclr ?? Colors.red,
      borderRadius: 50,
      borderWidth: 2,
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({
    required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33.w,
      height: 7.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient:  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFD0E42),
                 Maincolor,
              ])),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
    );
 
  }

  
}