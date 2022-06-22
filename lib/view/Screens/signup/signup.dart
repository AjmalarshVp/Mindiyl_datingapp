// ignore_for_file: unnecessary_new, prefer_const_constructors, duplicate_ignore

import 'package:dating_app/View/Screens/login/login_page.dart';
import 'package:dating_app/View/Screens/navigatoedrawer/navigator_drawer.dart';
import 'package:dating_app/view/Screens/imagepickerscreen/imagepicker.dart';

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'dart:async';

import 'genderscreen/genderselecton.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;
  TextEditingController datetime = TextEditingController();

  var textcontroller;

  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    Timer(Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: size.height,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyPoDB763I6K_Hp0J_6AB0D1wsldTQl8J6Mw&usqp=CAU",
                          ),
                          fit: BoxFit.fitHeight)),

                  child: BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.0)),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * (animation2.value + .58),
                  left: size.width * .21,
                  child: CustomPaint(
                    painter: MyPainter(50),
                    // foregroundPainter: MyPainter(30),
                  ),
                ),
                Positioned(
                  top: size.height * .98,
                  left: size.width * .1,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value - 30),
                  ),
                ),
                Positioned(
                  top: size.height * .5,
                  left: size.width * (animation2.value + .8),
                  child: CustomPaint(
                    painter: MyPainter(30),
                  ),
                ),
                Positioned(
                  top: size.height * animation3.value,
                  left: size.width * (animation1.value + .1),
                  child: CustomPaint(
                    painter: MyPainter(60),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
                            child: SizedBox(
                              width: size.width * .9,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.width * .15,
                                      bottom: size.width * .1,
                                    ),
                                    child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white.withOpacity(.8),
                                      ),
                                    ),
                                  ),
                                  component(
                                    icon: Icons.account_circle_outlined,
                                    hintText: "User name",
                                    isPassword: false,
                                    isEmail: false,
                                    textcontroller: datetime,
                                  ),
                                  component(
                                    icon: Icons.account_circle_outlined,
                                    hintText: "0/00/0000",
                                    isPassword: false,
                                    isEmail: true,
                                    suffix:

                                        //  Container(
                                        //   height: 30,
                                        //   width: 40,
                                        //   child: datetimepicker(datetime: datetime),
                                        // ),
                                        GestureDetector(
                                            child: Icon(Icons.calendar_month_outlined,color: Colors.white,),
                                            onTap: () async {
                                              var datePicked = await DatePicker
                                                  .showSimpleDatePicker(
                                                context,
                                                initialDate: DateTime(1994),
                                                firstDate: DateTime(1960),
                                                lastDate: DateTime(2012),
                                                dateFormat: "dd-MMMM-yyyy",
                                                locale:
                                                    DateTimePickerLocale.en_us,
                                                looping: true,
                                              );
                                              if (datePicked == null) return;
                                              datetime.text =
                                                  DateFormat('yyyy/MM/dd')
                                                      .format(datePicked);
                                              print(
                                                  "................$datePicked");

                                              final snackBar = SnackBar(
                                                  content: Text(
                                                      "Date Picked $datePicked"));
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);
                                              print(datetime.text);
                                            }),
                                    textcontroller: datetime,
                                  ),
                                  component(
                                    icon: Icons.account_circle_outlined,
                                    hintText: "hintText",
                                    isPassword: false,
                                    isEmail: true,
                                    textcontroller: datetime,
                                  ),
                                  component(
                                    icon: Icons.account_circle_outlined,
                                    hintText: "hintText",
                                    isPassword: false,
                                    isEmail: true,
                                    textcontroller: datetime,
                                  ),
                                  component(
                                    icon: Icons.account_circle_outlined,
                                    hintText: "hintText",
                                    isPassword: false,
                                    isEmail: true,
                                    textcontroller: datetime,
                                  ),

                                  // component(
                                  //   Icons.account_circle_outlined,
                                  //   'User name...',
                                  //   false,
                                  //   false,
                                  // ),
                                  //  component(
                                  //   Icons.account_circle_outlined,
                                  //   'Date of birth',
                                  //   false,
                                  //   false,
                                  // ),
                                  // component(
                                  //   Icons.email_outlined,
                                  //   'Email...',
                                  //   false,
                                  //   true,
                                  // ),
                                  // component(
                                  //   Icons.lock_outline,
                                  //   'Password...',
                                  //   true,
                                  //   false,
                                  // ),
                                  //  component(
                                  //   Icons.lock_outline,
                                  //   'Confirm Password...',
                                  //   true,
                                  //   false,
                                  // ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      //   RichText(
                                      //     text: TextSpan(
                                      //       text: 'Forgotten password!',
                                      //       style: TextStyle(
                                      //         color: Colors.white,
                                      //       ),
                                      //       recognizer: TapGestureRecognizer()
                                      //         ..onTap = () {
                                      //           HapticFeedback.lightImpact();
                                      //           Fluttertoast.showToast(
                                      //             msg:
                                      //                 'Forgotten password! button pressed',
                                      //           );
                                      //         },
                                      //     ),
                                      //   ),
                                      //   RichText(
                                      //     text: TextSpan(
                                      //       text: 'Create a new Account',
                                      //       style: TextStyle(
                                      //         color: Colors.white,
                                      //       ),
                                      //       recognizer: TapGestureRecognizer()
                                      //         ..onTap = () {
                                      //           HapticFeedback.lightImpact();
                                      //           Fluttertoast.showToast(
                                      //             msg:
                                      //                 'Create a new Account button pressed',
                                      //           );
                                      //         },
                                      //     ),
                                      //   ),
                                    ],
                                  ),
                                  SizedBox(height: size.width * .3),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      HapticFeedback.lightImpact();
                                      Fluttertoast.showToast(
                                        msg: 'Sign-In button pressed',
                                      );
                                    },
                                    child: GestureDetector(
                                      onTap: (() => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ImageTaking(),
                                          ))),
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          bottom: size.width * .05,
                                        ),
                                        height: size.width / 8,
                                        width: size.width / 1.25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(.1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget component(
      {required TextEditingController textcontroller,
      required IconData icon,
      required String hintText,
      required bool isPassword,
      required bool isEmail,
      Widget? suffix}) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 8,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: textcontroller,
        style: TextStyle(
          color: Colors.white.withOpacity(.9),
        ),
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ),
    );

    
  }



}

class datetimepicker extends StatelessWidget {
  const datetimepicker({
    Key? key,
    required this.datetime,
  }) : super(key: key);

  final TextEditingController datetime;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("open picker dialog"),
      onPressed: () async {
        var datePicked = await DatePicker.showSimpleDatePicker(
          context,
          initialDate: DateTime(1994),
          firstDate: DateTime(1960),
          lastDate: DateTime(2012),
          dateFormat: "dd-MMMM-yyyy",
          locale: DateTimePickerLocale.en_us,
          looping: true,
        );
        if (datePicked == null) return;
        datetime.text = DateFormat('yyyy/MM/dd').format(datePicked);
        print("................$datePicked");

        final snackBar = SnackBar(content: Text("Date Picked $datePicked"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print(datetime.text);
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
