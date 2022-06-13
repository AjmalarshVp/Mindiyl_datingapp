import 'package:dating_app/common_widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../testing/testing.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  TextEditingController gmailcontroller = TextEditingController();
  bool genterb = false;
  @override
  Widget build(BuildContext context) {
  
    String genter = 'male';
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3532552/pexels-photo-3532552.jpeg?cs=srgb&dl=pexels-hitesh-choudhary-3532552.jpg&fm=jpg",))
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Select Your Gender',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 30.h,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            genter = 'male';
                            if (genterb) {
                              genterb = false;
                            } else {
                              genterb = true;
                            }
                          });
                        },
                        child: Column(
                          children: [
                            Opacity(
                              opacity: genterb ? 0.5 : 1,
                              child: CircleAvatar(
                                // backgroundImage: ExactAssetImage(
                                //   "",
                                // ),
                                maxRadius: 70,
                                child: Lottie.network(
                                    "https://assets1.lottiefiles.com/packages/lf20_we4yddwi.json",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: genterb ? Colors.grey : Colors.blue),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            genter = 'Femal';
                            if (genterb) {
                              genterb = false;
                            } else {
                              genterb = true;
                            }
                          });
                        },
                        child: Column(
                          children: [
                            Opacity(
                              opacity: !genterb ? 0.5 : 1,
                              child: CircleAvatar(
                                backgroundImage: ExactAssetImage(""),
                                maxRadius: 70,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: !genterb ? Colors.grey : Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Date_timepicker(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: CustomTextformfield(
                  keybordtype: TextInputType.emailAddress,
                  hint: "Enter Your Gmail",
                  controller: gmailcontroller,
                  validator: (value) {},
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
