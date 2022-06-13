

import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final hint;
  final keybordtype;
  Widget? prefixicon;

   CustomTextformfield(
      {required this.controller, required this.validator, Key? key, this.hint, this.keybordtype,this.prefixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      keyboardType:keybordtype,
      controller: controller,
      validator: validator,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          hintText: hint,
           prefixIcon: prefixicon,
          hintStyle: TextStyle(fontSize: 12.sp),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(25)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Maincolor, width: .3.w),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: .3.w),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: .3.w),
            borderRadius: BorderRadius.circular(25.0),
          )),
    );
  }
}
