import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:dating_app/common_widget/textstle.dart';
import 'package:flutter/material.dart';



class ProfileDetails extends StatelessWidget {
  final dynamic img;
  final String about;
   ProfileDetails({Key? key,required this.about,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                             img),
                          fit: BoxFit.fill),
                    ),
                    height: 300,

                    // color: Colors.red,
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.black,
                          Maincolor,
                          //Colors.pink,
                          //Color.fromARGB(255, 3, 47, 83),
                          Colors.black
                        ],
                      )
                          // color: Color.fromARGB(10, 20, 30, 10),
                          // color: Colors.white,
                          // borderRadius: BorderRadius.only(
                          //   bottomLeft:  Radius.circular(30.0),
                          //   topRight: Radius.circular(30.0),
                          // ),
                          ),
                      child: Column(
                        // shrinkWrap:false,
                        children: [
                          Expanded(
                            child: Container(
                              // decoration: BoxDecoration(
                              //   color: Colors.pink,
                              //   borderRadius: BorderRadius.only(
                              //     topLeft: Radius.circular(30.0),
                              //     topRight: Radius.circular(30.0),
                              //   ),
                              // ),
                              //height: 300,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8),
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    Text_custum(
                                      txt: "About me",
                                      clr: Colors.white,
                                      fs: 36,
                                      fw: FontWeight.bold,
                                    ),
                                    Text_custum(
                                        txt: "Bio",
                                        clr: Colors.white,
                                        fs: 29,
                                        fw: FontWeight.bold),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.2),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          bottomRight: Radius.circular(30.0),
                                        ),
                                      ),
                                      height: 120,
                                      //color: Colors.pink,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: ListView(
                                          children: [
                                            Text_custum(
                                              txt:about,
                                              clr: Colors.white,
                                              fs: 19,
                                              textoverflow:
                                                  TextOverflow.visible,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 28.0, top: 18),
                                      child: Row(
                                        children: [
                                          Text_custum(
                                            txt: "Hieght",
                                            clr: Colors.white,
                                            fs: 22,
                                            textoverflow: TextOverflow.visible,
                                            fw: FontWeight.bold,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text_custum(
                                            txt: "hieght",
                                            clr: Colors.grey,
                                            fs: 19,
                                            textoverflow: TextOverflow.visible,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// class ProfileDetails extends StatelessWidget {
//   const ProfileDetails({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ListView(
//         children: [
//           Container(
//             height: 200,
//             color: Colors.white,

//           ),
//           Stack(
//             children: [
//               Container(
//                 height: 50,
//                 color: Colors.blue,
//               ),
//                Container(
//                 height: 100,
//                 color: Colors.red,
//               ),
//             ],
//           )

    
//         ],
//       ),
//     );
//   }
// }