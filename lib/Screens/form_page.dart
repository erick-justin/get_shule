

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget{
  String form_id;

  FormPage(this.form_id);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return FormPageState();
  }
}

class FormPageState extends State<FormPage>{

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar:  AppBar(
        backgroundColor: Colors.white,
       elevation: 0,
       iconTheme:  const IconThemeData(
          color: Colors.black
       ),
     ),

     body: Column(

       children:[ Text("Feza Boys Secondary School")
       ]
     ),
   );
  }
}

