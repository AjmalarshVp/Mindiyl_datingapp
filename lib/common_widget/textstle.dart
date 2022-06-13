import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Text_custum extends StatelessWidget {
  var clr;

  String txt;

  dynamic fw;

  double? fs;

 Text_custum({ Key? key , required this.txt,this.clr,this.fs,this.fw}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(txt,style: TextStyle(color: clr,fontSize: fs,fontWeight: fw),);
  }
}
