// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroudCurveWidget extends StatelessWidget {
  const BackgroudCurveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: ShapeDecoration(
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(150, 25),
                  bottomRight: Radius.elliptical(150, 25),
                ),
              ),
              
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: <Color>[
                  Color(0xFFFD0E42),
                  Color(0xFFFD0E42),

                  Colors.pink.withOpacity(1),
                 
                ],
              )),
          // child: Padding(
          //   padding: EdgeInsets.only(top: 76.0, left: 20.0,right: 20),
          //   child:
               
          //       Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'people nearby',
          //         style: TextStyle(
          //           fontFamily: 'Nunito',
          //           fontWeight: FontWeight.w800,
          //           color: Colors.white,
          //           fontSize: 26,
          //         ),
          //       ),
          //       Icon(
          //         Icons.layers,
          //         size: 39,
          //       )
          //     ],
          //   ),
          // ),
        ),
        // Container(

        //   height: 100,
        //   color: Colors.black,
        // )
      ],
    );
  }
}
