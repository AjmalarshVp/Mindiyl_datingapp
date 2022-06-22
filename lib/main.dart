
import 'package:dating_app/View/Screens/firstscreen/login_screen.dart';
import 'package:dating_app/View/Screens/login/login_page.dart';
import 'package:dating_app/View/Screens/signup/signup.dart';
import 'package:dating_app/testing.dart';
import 'package:dating_app/testing/testing.dart';
import 'package:dating_app/view/Screens/ChatScreen/chat_screen.dart';
import 'package:dating_app/view/Screens/ChatScreen/homescreen.dart';

import 'package:dating_app/view/Screens/onbordysplash/onbodysplashscreen.dart';
import 'package:dating_app/view/Screens/profilescreen/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'view/Screens/profilescreen/editprofile.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          
            title: "Random Users",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              bottomSheetTheme:
                  BottomSheetThemeData(backgroundColor: Colors.transparent),
              // scaffoldBackgroundColor: Maincolor,
              primarySwatch: Colors.pink,
              textTheme: GoogleFonts.balooBhai2TextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            home:FirstScreen() );
      },
    );
  }
}
