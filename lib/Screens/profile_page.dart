

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_shule/Screens/profile_edit.dart';

import '../utilities/colors.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return ProfilePageState();
  }
}


class ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
       appBar:  AppBar(
         backgroundColor: Colors.white,
          elevation: 0,
          iconTheme:const IconThemeData(
             color: Colors.black
          ),
          centerTitle: true,
          title: const Text("Profile",style: TextStyle(
            color: Colors.black
          ),),

       ),
      body: theBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (builder)=>ProfileEditPage()));
        },
        backgroundColor: mainBlack,
        child: const Icon(Icons.edit,color: Colors.white,),
      ),

    ));
  }

  theBody(
      ){

     return Column(
        children: [

          Row(

            children: [

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                   height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15)
                  ),
                  child: ClipRRect(
                     borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      errorWidget: (s,f,r)=>const Icon(Icons.person_add_alt),
                      imageUrl:"https://media.istockphoto.com/photos/north-african-black-young-woman-picture-id1060680104?k=20&m=1060680104&s=612x612&w=0&h=sF6-ASrctB7pG1MTdD8zTiD5TKLEAWeZR3UgQOUWJuk=",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text("Full name"),

                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    hintText: "Write your full name",
                     border: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainBlack)
                     )
                  ),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text("Full name"),

                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      hintText: "Write your full name",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: mainBlack)
                      )
                  ),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text("Primary school"),

                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      hintText: "Write your full name",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: mainBlack)
                      )
                  ),
                )

              ],
            ),
          ),
        ],
     );
  }

}