import 'package:dating_app/View/Screens/firstscreen/login_screen.dart';
import 'package:dating_app/Screen/onboarding_Screen/gender_selection/SignUp_Screen.dart';
import 'package:dating_app/View/Screens/signup/genderscreen/genderselecton.dart';
import 'package:dating_app/View/Screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hw_introduction_screen/hw_introduction_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';


class Onbording_Screen extends StatelessWidget {
  const Onbording_Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: false,
      done: Text("Next"),
      onDone:(){
      //  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));

      } ,
      next: Icon(Icons.abc_outlined),
      pages: [
        PageViewModel(
          title: "",
          bodyWidget:SignUp() ,
        ),
        // PageViewModel(
        //   title: "",
        //   bodyWidget:Gender_Selection(), 
        // ),
        // PageViewModel(
        //   title: "",
        //   bodyWidget:Looking_gender(), 
        // )
      ],
    );
  }
}

// class Onbording_Screen extends StatelessWidget {
//   const Onbording_Screen({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return HwIntroductionScreen(
//       nextButton: Text("next"),
//       skipButton: Text("data"),
//       onFinish: (){},
//       items: [
      

//       HwIntroductionItem(
//         title: 'Introduction Title', // String
//             caption: 'Introduction Caption', // String
//       )
//     ]);
//   }
// }