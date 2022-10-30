



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';
import 'option_view.dart';

class DialogWidget extends StatelessWidget{
  Function?  onClick;
  String image_asset;
  String title;
  String desc;
  bool has_onclick;
  String button_string;


  DialogWidget(this.image_asset, this.title, this.desc,{this.has_onclick=false,this.onClick,this.button_string="OK"});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children:[
         Padding(
           padding: const EdgeInsets.all(32.0),
           child: SizedBox(
             height: 170,
               width: 170,
               child: Image.asset(image_asset)),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
              textAlign: TextAlign.center,
              style: const TextStyle(
               fontWeight: FontWeight.bold,
              fontSize: 22
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(desc,
              textAlign: TextAlign.center,
              style:
            const TextStyle(
               fontSize: 15,
               color: Colors.black54
            ),),
          ),

          if(has_onclick) Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
               onTap: (){
                 onClick!();
               },
              child: SizedBox(
                width: double.infinity,
                  child: OptionView(mainBlack,button_string,padding: 16,radius: 13,weight: FontWeight.bold,)),
            ),
          )


   ] ),
    );
  }

}