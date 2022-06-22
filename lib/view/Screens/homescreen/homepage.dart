import 'package:dating_app/View/Screens/homescreen/detailspage/details.dart';
import 'package:dating_app/common_widget/action_button_widget.dart';
import 'package:dating_app/Screen/Home_screen/widgets/content.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url = "https://randomuser.me/api/?results=50";
  bool isLoading = true;
  late List usersData;
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  Future getData() async {
    var response = await http.get(
      Uri.parse(url),
      // headers: {"Accept": "application/json"},
    );

    List data = jsonDecode(response.body)['results'];
    setState(() {
      usersData = data;

      if (usersData.isNotEmpty) {
        for (int i = 0; i < usersData.length; i++) {
          _swipeItems.add(SwipeItem(
              content: Content(text: usersData[i]['name']['first']),
              likeAction: () {
                _scaffoldKey.currentState?.showSnackBar(const SnackBar(
                  content: Text("Liked "),
                  duration: Duration(milliseconds: 500),
                ));
              },
              
              nopeAction: () {
                _scaffoldKey.currentState?.showSnackBar(SnackBar(
                  content: Text("Nope ${usersData[i]['name']['first']}"),
                  duration: const Duration(milliseconds: 500),
                ));
              },
              superlikeAction: () {
                _scaffoldKey.currentState?.showSnackBar(SnackBar(
                  content: Text("Superliked ${usersData[i]['name']['first']}"),
                  duration: const Duration(milliseconds: 500),
                ));
              },
              onSlideUpdate: (SlideRegion? region) async {
                print("Region $region");
              }));
        } //for loop
        _matchEngine = MatchEngine(swipeItems: _swipeItems);
        isLoading = false;
      } //if
    }); // setState
  } // getData

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: _scaffoldKey,
      children: [
        Positioned(
          left: 40,
          bottom: 80,
          child: isLoading
              ? Align(
                alignment: Alignment.topRight,
                child: const CircularProgressIndicator())
              : SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SwipeCards(
                    matchEngine: _matchEngine!,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        fit: StackFit.passthrough,
                        children: <Widget>[
                          Card(
                            //margin: const EdgeInsets.all(40.0),
                            //shadowColor: Colors.red,
                            //borderOnForeground: true,
                            elevation: 12.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0),
                            ),
                            //color: Colors.,
                            child: Padding(
                              padding: const EdgeInsets.all(.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  // "https://images.pexels.com/photos/3532552/pexels-photo-3532552.jpeg?cs=srgb&dl=pexels-hitesh-choudhary-3532552.jpg&fm=jpg",
                                  usersData[index]['picture']['large'],

                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 70.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24.0),
                                  bottomRight: Radius.circular(24.0),
                                ),
                                color: Colors.black.withOpacity(0.2),
                              ),
                              margin:
                                  const EdgeInsets.fromLTRB(5, 0.0, 4.0, 2.0),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18, top: 15.0, right: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(
                                              usersData[index]['name']
                                                      ['first'] +
                                                  ", " +
                                                  usersData[index]['dob']['age']
                                                      .toString(),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              softWrap: false,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(0.0),
                                            child: Text(
                                              usersData[index]['location']
                                                      ['city'] +
                                                  ", " +
                                                  usersData[index]['location']
                                                      ['country'],
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              softWrap: false,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfileDetails(
                                                        about: usersData[index]
                                                            ['name']['first'],
                                                        img: usersData[index]
                                                                ['picture']
                                                            ['thumbnail']),
                                              ));
                                          // Navigator.push(
                                          // context,
                                          //MaterialPageRoute(
                                          // builder: (context) =>
                                          //     DetailsPage(
                                          //   name: usersData[index]['name']
                                          //       ['first'],
                                          //   age: usersData[index]['dob']
                                          //           ['age']
                                          //       .toString(),
                                          //   gender: usersData[index]
                                          //       ['gender'],
                                          //   city: usersData[index]
                                          //       ['location']['city'],
                                          //   state: usersData[index]
                                          //       ['location']['state'],
                                          //   country: usersData[index]
                                          //       ['location']['country'],
                                          //   phone: usersData[index]
                                          //           ['phone']
                                          //       .toString(),
                                          //   email: usersData[index]
                                          //       ['email'],
                                          //   avatar: usersData[index]
                                          //       ['picture']['large'],
                                          // ),
                                          //   ),
                                          //);
                                        },
                                        icon: const Icon(
                                          Icons.directions_sharp,
                                          color: Colors.white,
                                        ),
                                        label: const Text(
                                          "Profile",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          elevation: 8.0,
                                          shadowColor: Colors.deepPurple,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    onStackFinished: () {
                      _scaffoldKey.currentState!.showSnackBar(const SnackBar(
                        content: Text("Stack Finished"),
                        duration: Duration(milliseconds: 500),
                      ));
                    },
                    itemChanged: (SwipeItem item, int index) {
                      print("item: ${item.content.text}, index: $index");
                    },
                    upSwipeAllowed: true,
                    fillSpace: true,
                  ),
                ),
        ),
        Positioned(
          bottom: -40,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 46.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButtonWidget(
                  onPressed: () {
                    _matchEngine!.currentItem?.nope();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.pink,
                  ),
                  clr: Colors.white,
                ),
                const SizedBox(width: 20),
                ActionButtonWidget(
                  onPressed: () {
                    _matchEngine!.currentItem?.like();
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  clr: Colors.pink,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
