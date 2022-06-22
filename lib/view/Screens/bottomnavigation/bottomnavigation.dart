import 'package:dating_app/Controller/getxcontroller.dart';
import 'package:dating_app/Screen/onboarding_Screen/gender_selection/SignUp_Screen.dart';
import 'package:dating_app/view/Screens/ChatScreen/chat_screen.dart';
import 'package:dating_app/view/Screens/ChatScreen/homescreen.dart';
import 'package:dating_app/view/Screens/profilescreen/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../homescreen/background_curve_widget.dart';
import '../homescreen/homepage.dart';
import '../insidepages/secondscreen/Appbar/secondscreen.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());

    final pages = [
      Stack(
        children: [BackgroudCurveWidget(), HomePage()],
      ),
     
      CustomAppbar(),
      Chat(),
     ProfileScreen()

      // SignUp_Screen(),
    ];
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: GetBuilder<Controller>(
        builder: (controller) {
          return pages[controller.bottomindex];
        },
      ),

      bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: displayWidth * .05),
          //height: 20,
          height: displayWidth * .155,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: displayWidth * .06),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                controller.bottomindex = index;
                controller.update();
                print(controller.bottomindex);
                // pages[currentIndex];
                HapticFeedback.lightImpact();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == controller.bottomindex
                        ? displayWidth * .34
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == controller.bottomindex
                          ? displayWidth * .12
                          : 0,
                      width: index == controller.bottomindex
                          ? displayWidth * .32
                          : 0,
                      decoration: BoxDecoration(
                        color: index == controller.bottomindex
                            ? Colors.blueAccent.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == controller.bottomindex
                        ? displayWidth * .31
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == controller.bottomindex
                                  ? displayWidth * .13
                                  : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == controller.bottomindex ? 1 : 0,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == controller.bottomindex
                                    ? '${listOfStrings[index]}'
                                    : '',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == controller.bottomindex
                                  ? displayWidth * .03
                                  : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == controller.bottomindex
                                  ? Colors.blueAccent
                                  : Colors.black26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.chat_bubble_outline_sharp,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    'Home',
    'Favorite',
    'Settings',
    'Account',
  ];
}
