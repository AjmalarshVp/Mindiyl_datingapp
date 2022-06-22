// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<IconData> iconsUsed = [
    Icons.search,
    Icons.bookmark,
    Icons.check,
    Icons.person_add_alt_rounded,
    Icons.article,
    Icons.group
  ];
  List<String> textDetails = [
    "Search",
    "Saved",
    "Applied",
    "Shortlisted",
    "Resume",
    "Placement"
  ];
  List<Color> colorChange = [
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.purple,
    Colors.red,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    double sizew = MediaQuery.of(context).size.width;
    dynamic sizedbox = SizedBox(
      height: size * 0.01,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading: Icon(Icons.menu, color: Colors.black),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 8.0),
      //       child: Icon(
      //         Icons.notification_important_sharp,
      //         color: Colors.black,
      //       ),
      //     )
      //   ],
      //   title: Text(
      //     "Indiaan",
      //     style: TextStyle(color: Colors.blue[200]),
      //   ),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 2.h, right: 2.h),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              decoration: BoxDecoration(
                
               
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(30),
              ),
              height: size * 0.40,
              width: sizew,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg",
                              ),
                              radius: 45,
                              foregroundColor: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi,  Vijith",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25),
                                ),
                                // sizedbox,
                                // SizedBox(
                                //   height: ,
                                // ),
                                Text("Chemistry teacher",
                                    style: TextStyle(color: Colors.black,fontSize: 16))
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 19,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(.7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: size * 0.2,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Complete Your profile",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18))),
                                  sizedbox,
                                  LinearProgressIndicator(
                                    minHeight: 4.8,
                                    value: .8,
                                    color: Colors.green,
                                  ),
                                  sizedbox,
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "Your profile completion at 90%",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  SizedBox(
                                    height: size * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                            ),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.orange),
                                          ),
                                          onPressed: () {},
                                          child: Text("Update to premium")),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.blue),
                                        ),
                                        onPressed: () {},
                                        child: Text("Edit profile"),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size * 0.040,
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: colorChange[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: size * .18,
                        width: size * .17,
                        child: Icon(
                          iconsUsed[index],
                          color: Colors.white,
                          size: 37,
                        )),
                    Text(
                      textDetails[index],
                      style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),
                    ),
                  ],
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            ),
          ],
        ),
      ),
      //  bottomNavigationBar: bottamNavigation(),
    );
  }
}

class bottamNavigation extends StatelessWidget {
  const bottamNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          label: 'Business',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          label: 'School',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.whatsapp,
            color: Colors.black,
          ),
          label: 'Settings',
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
