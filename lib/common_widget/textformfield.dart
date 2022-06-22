import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;
  final hint;
  final keybordtype;
  Widget? prefixicon;

  CustomTextformfield(
      {required this.controller,
      required this.validator,
      Key? key,
      this.hint,
      this.keybordtype,
      this.prefixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keybordtype,
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

class CustomTextformfieldsqure extends StatelessWidget {
  final maxLines;
  final FormFieldValidator? validator;
  final TextEditingController controller;
  final hint;
  final label;
  final keybordtype;
  Widget? prefixicon;
  CustomTextformfieldsqure(
      {Key? key,
      required this.controller,
      this.maxLines,
      this.validator,
      this.prefixicon,
      this.hint,
      this.label,
      this.keybordtype})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        validator: validator,
        maxLines: maxLines,
        controller: controller,
        textInputAction: TextInputAction.done,
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),
        onChanged: (value) {},
        decoration: InputDecoration(
          focusColor: Colors.white,
          //add prefix icon
          prefixIcon: prefixicon,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(15)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: .3.w),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: .3.w),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: .3.w),
            borderRadius: BorderRadius.circular(15.0),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

          // focusedBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          //   borderRadius: BorderRadius.circular(10.0),
          // ),
          fillColor: Colors.grey,

          hintText: hint,

          //make hint text
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),

          //create lable
          labelText: label,
          //lable style
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
