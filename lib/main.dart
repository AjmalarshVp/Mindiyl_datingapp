import 'package:dating_app/Screens/login/login_page.dart';
import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:dating_app/Screens/onbordysplash/onbodysplashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'Screen/Home_screen/widgets/appBar.dart';

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
             // scaffoldBackgroundColor: Maincolor,
              primarySwatch: Colors.pink,
              textTheme: GoogleFonts.balooBhai2TextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            home: Onboard1 ());
      },
    );
  }
}
