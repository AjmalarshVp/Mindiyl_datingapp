import 'package:dating_app/common_widget/constantcolors.dart';
import 'package:dating_app/common_widget/textformfield.dart';
import 'package:dating_app/common_widget/textstle.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'A', 'April 18'));
    sampleData.add(new RadioModel(false, 'B', 'April 17'));
    sampleData.add(new RadioModel(false, 'C', 'April 16'));
    sampleData.add(new RadioModel(false, 'D', 'April 15'));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListItem"),
      ),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.,

        children: [
          SizedBox(
            height: 130,
          ),
          Expanded(
              child: Text(
            "What kind of mairen your?",
            style: TextStyle(fontSize: 32, color: Colors.pink),
          )),
          Flexible(
            flex: 3,
            child: new ListView.builder(
              itemCount: sampleData.length,
              itemBuilder: (BuildContext context, int index) {
                return new InkWell(
                  //highlightColor: Colors.red,
                  splashColor: Colors.blueAccent,
                  onTap: () {
                    setState(() {
                      sampleData
                          .forEach((element) => element.isSelected = false);
                      sampleData[index].isSelected = true;
                    });
                  },
                  child: new RadioItem(sampleData[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(10.0),
      child: Center(
        child: new Container(
          height: 50,
          width: 280,
          decoration: new BoxDecoration(
            color: _item.isSelected ? Colors.blueAccent : Colors.red,
            border: new Border.all(
                width: 1.0,
                color: _item.isSelected ? Colors.blueAccent : Colors.grey),
            borderRadius: const BorderRadius.all(const Radius.circular(12.0)),
          ),
          margin: new EdgeInsets.only(left: 10.0),
          child: Center(child: new Text(_item.text)),
        ),
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}
//------------------------------------------------------------------------------------

class ProfileDetails extends StatelessWidget {
  // final dynamic img;
  // final String about;
  ProfileDetails({
    Key? key,
  }) : super(key: key);
  TextEditingController userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(

                      bottomLeft: Radius.circular(160.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/imagepicking/dani.jpg"), fit: BoxFit.cover),
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
                        Colors.white,
                        Colors.white,
                        //   Colors.black,
                        // Maincolor,
                        //Colors.pink,
                        //Color.fromARGB(255, 3, 47, 83),
                        // Colors.black
                      ],
                    )
                        // color: Color.fromARGB(10, 20, 30, 10),
                        // color: Colors.white,
                        // borderRadius: BorderRadius.only(
                        //   bottomLeft:  Radius.circular(30.0),
                        //   topRight: Radius.circular(30.0),
                        // ),
                        ),
                    child: Expanded(
                     
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 8.0, right: 8,),
                          child: ListView(
                            
                            shrinkWrap: true,
                            children: [
                              Text(
                                "Edit your data",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontFamily: "",
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "details",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: "verdana_regular",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              CustomTextformfieldsqure(controller: userInput,maxLines: 4, label: "Enter your details",
                                hint: "About",),
                              CustomTextformfieldsqure(
                                label: "phone number",
                                hint: "Phone number",
                                controller: userInput,
                                prefixicon: Icon(Icons.phone_android),
                              ),
                            CustomTextformfieldsqure(controller: userInput,prefixicon: Icon(Icons.logo_dev,)),
                             CustomTextformfieldsqure(
                                label: "phone number",
                                hint: "Phone number",
                                controller: userInput,
                                prefixicon: Icon(Icons.phone_android),
                              ),
                                 CustomTextformfieldsqure(
                                label: "phone number",
                                hint: "Phone number",
                                controller: userInput,
                                prefixicon: Icon(Icons.phone_android),
                              ),
                                 CustomTextformfieldsqure(
                                label: "phone number",
                                hint: "Phone number",
                                controller: userInput,
                                prefixicon: Icon(Icons.phone_android),
                              ),
                          
                            ],
                          ),

                        ),
                     // ),
                    ),
                  ),
                )
              ],
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