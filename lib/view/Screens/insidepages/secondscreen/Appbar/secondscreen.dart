//

import 'package:dating_app/View/Screens/insidepages/secondscreen/Appbar/friendslist.dart';
import 'package:dating_app/View/Screens/insidepages/secondscreen/Appbar/notification.dart';
import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:flutter/material.dart';

import '../../../Home_screen/homepage.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _CustomAppbarState extends State<CustomAppbar>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          //   SizedBox(height: 30,),
          //  Container(
          //   height: 100,
          //   color: Colors.black,
          //  ),
          Container(
            decoration: BoxDecoration(
              //color: Colors.white,
            image: DecorationImage(image: NetworkImage("data:image/jpeg;base64,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")),
            ),
            height: 120,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 0, right: 60),
                labelColor: Maincolor,
                controller: _tabController,
                unselectedLabelColor: Colors.teal,
                tabs: [
                  Tab(
                    child: Row(
                      children: [Icon(Icons.favorite_rounded), Text("Friends")],
                    ),
                  ),
                  Tab(
                     child: Row(
                      children: [Icon(Icons.notifications), Text("Notification")],
                    ),
                  ),
                  Tab(
                     child: Row(
                      children: [Icon(Icons.chat_bubble_outline_rounded), Text("Request")],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              //color: Colors.red,
              // width: double.maxFinite,

              child: TabBarView(
                controller: _tabController,
                children: [
                
                  CustumGridview(),
                    CustumListview(),
                  Center(
                    child: Text("It's sunny here"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
