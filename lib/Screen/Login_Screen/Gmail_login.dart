import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../common_widget/textformfield.dart';

class PhoneLogin extends StatelessWidget {
  PhoneLogin({Key? key}) : super(key: key);

  TextEditingController gmailcontroller = TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
              physics: const ClampingScrollPhysics(
                  parent: NeverScrollableScrollPhysics()),
              children: [
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.arrow_back)),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w, right: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 180,
                            child: Lottie.network(
                              "https://assets1.lottiefiles.com/packages/lf20_we4yddwi.json",
                              fit: BoxFit.fill,
                            //  width: 200.w,
                              //height: 300.h,
                              // alignment: Alignment.centerLeft,
                              // addRepaintBoundary: false,
                            ),
                          ),
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 23.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            "Login to your account",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          CustomTextformfield(
                            controller: gmailcontroller,
                            validator: ((valuue) {
                              
                            }),
                            hint: "Enter Your Gmail",
                          ),
                           SizedBox(
                            height: 1.h,
                          ),
                          CustomTextformfield(
                            controller: passwordcontroller,
                            validator: ((valuue) {
                              
                            }),
                            hint: "Enter Your password",
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Center(
                            child: _RegisterButton(
                              ontap: () {
                                if (formKey.currentState!.validate()) {
                                  //  phoneVerification(context);
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          // const RegisterDontHaveAccount()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }

  // Future phoneVerification(BuildContext context) async {
  //   var apiUrl = Uri.parse("https://readerclub.store/api/auth/otplogin");

  //   Map mapDatas = {
  //     "mobile": phonecontroller.text,
  //   };
  //   print("JSON DATA $mapDatas");

  //   http.Response response = await http.post(apiUrl, body: mapDatas);

  //   if (response.statusCode == 200) {
  //     var dataS = jsonDecode(response.body);

  //     print('DATAAS $dataS');
  //     Navigator.push(
  //         context,
  //         PageTransition(
  //             child: OtpPage(phcontroller: phonecontroller),
  //             type: PageTransitionType.fade));
  //   } else {
  //     print("No phone number");
  //   }
  // }
}

class _RegisterButton extends StatelessWidget {
  final VoidCallback ontap;
  const _RegisterButton({
    required this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 6.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.white
            ]),
          ),
          child: Center(
              child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp),
          ))),
    );
  }
}


