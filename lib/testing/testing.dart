import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../common_widget/textformfield.dart';





class Date_timepicker extends StatelessWidget {
  
  Widget build(BuildContext context) {
    TextEditingController datetime =TextEditingController();
    
    return Stack(
      children: [

       Container(

         width: 180,
         child: CustomTextformfield(validator: (Value){

         },
         controller: datetime,
         hint: "0/00/0000",
         
         ),
         
       ) ,
       SizedBox(width: 20,),
        Positioned(
          left: 12.h,
          bottom: 2.h,

          child: Container(
            height: 30,
            width: 40,
            child: ElevatedButton(
              child: Text("open picker dialog"),
              onPressed: () async {
                var datePicked = await DatePicker.showSimpleDatePicker(
                  context,
                  initialDate: DateTime(1994),
                  firstDate: DateTime(1960),
                  lastDate: DateTime(2012),
                  dateFormat: "dd-MMMM-yyyy",
                  locale: DateTimePickerLocale.en_us,
                  looping: true,
                );
                if(datePicked == null) return;
                datetime.text = DateFormat('yyyy/MM/dd').format(datePicked);
                print("................$datePicked");
        
                final snackBar =
                    SnackBar(content: Text("Date Picked $datePicked"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              
            ),
          ),
        ),
      ],
    );
  }
}

 