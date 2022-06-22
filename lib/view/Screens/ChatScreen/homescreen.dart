


import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:dating_app/view/Screens/ChatScreen/widgets/favorite_contacts.dart';
import 'package:dating_app/view/Screens/ChatScreen/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Chat extends StatelessWidget {
  @override
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          SizedBox(height: 8.h),
         // CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color:Maincolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                 RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}