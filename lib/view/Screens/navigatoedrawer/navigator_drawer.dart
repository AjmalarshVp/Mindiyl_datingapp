// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:dating_app/View/Screens/bottomnavigation/bottomnavigation.dart';
import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:dating_app/common_widget/textstle.dart';
import 'package:dating_app/view/Screens/profilescreen/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sizer/sizer.dart';

import '../../../Controller/getxcontroller.dart';

class Drawer2 extends StatelessWidget {
  const Drawer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [DrawerScreen(), HomeScreen()],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());

    return GetBuilder<Controller>(builder: (Controller) {
      return SafeArea(
        child: AnimatedContainer(
          height: MediaQuery.of(context).size.height,
          transform: Matrix4.translationValues(
              controller.xOffset, controller.yOffset, 0)
            ..scale(controller.scaleFactor)
            ..rotateY(controller.isDrawerOpen ? -0.5 : 0),
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
              color: Maincolor,
              borderRadius:
                  BorderRadius.circular(controller.isDrawerOpen ? 40 : 0.0)),
          child: Stack(
            children: [
              BottomNavigation(),
              Padding(
                padding: EdgeInsets.all(3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    controller.isDrawerOpen
                        ? IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              controller.xOffset = 0;
                              controller.yOffset = 0;
                              controller.scaleFactor = 1;

                              controller.isDrawerOpen = false;
                              controller.update();
                            })
                        : GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                              // controller.xOffset = 230;
                              // controller.yOffset = 150;
                              // controller.scaleFactor = 0.6;
                              // controller.isDrawerOpen = true;
                              // controller.update();
                            },
                            child: SizedBox(
                              height: 40,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                // radius: 30,
                                child: Image(
                                    image: AssetImage(
                                        "assets/Signupscreen/female.jpg")),
                              ),
                            ),
                          ),
                    Text_custum(
                      txt: 'Mindiyal',
                      fs: 23,
                      fw: FontWeight.bold,
                    ),
                    IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          controller.xOffset = 230;
                          controller.yOffset = 150;
                          controller.scaleFactor = 0.6;
                          controller.isDrawerOpen = true;
                          controller.update();
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 239, 93, 142),
        padding: const EdgeInsets.only(top: 50, bottom: 70, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){

              },
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/Signupscreen/female.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ajmal Arsh',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text('Active Status', style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: drawerItems
                  .map((element) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              element['icon'],
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(element['title'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))
                          ],
                        ),
                      ))
                  .toList(),
            ),
            Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<BoxShadow> shadowList = [
  BoxShadow(
      color: Colors.grey.shade300, blurRadius: 30, offset: const Offset(0, 10))
];

List<Map> drawerItems = [
  // {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  // {'icon': Icons.mail, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add details'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];
