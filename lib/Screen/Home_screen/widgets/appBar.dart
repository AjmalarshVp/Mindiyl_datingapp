//
import 'package:dating_app/Screens/homescreen/homepage.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
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
          SizedBox(
            height: 120,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 0,right: 60),
                labelColor: Colors.red,
                controller: _tabController,
                unselectedLabelColor: Colors.teal,
                tabs: [
                  Tab(
                   
                    child: Row(
                      children: [Icon(Icons.abc), Text("Home")],
                    ),
                  ),
                  Tab(
                    text: "Favourite",
                  ),
                  Tab(
                    text: "Chat",
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height:double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Stack(
                  children: [
                    ListView(
                      children: [HomePage()],
                    ),
                    // HomePage(),
                    Text("It's sunny here"),
                    Text("It's sunny here"),
                   
                  ],
                ),

                // Center(child: HomePage()),
                Center(
                  child: Text("It's sunny here"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
