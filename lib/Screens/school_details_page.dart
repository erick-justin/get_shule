

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_shule/utilities/colors.dart';
import 'package:get_shule/utilities/sizeConfig.dart';

class SchoolDetailsPage extends StatefulWidget{
  var school;


  SchoolDetailsPage(this.school);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SchoolDetailsPageState(school);
  }

}


class SchoolDetailsPageState extends State<SchoolDetailsPage>{
  var school;

  SchoolDetailsPageState(this.school);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(child: Scaffold(
     backgroundColor: mainBlack,
     body: theBody(),
     floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
       backgroundColor: Colors.white,
        child: const Icon(Icons.edit,color: mainBlack,),
     ),





   )

   );

  }


  theBody(){
     return Column(
         children: [

           Container(
               height: SizeConfig.screenHeight!*0.4,
              child: CachedNetworkImage(
                imageUrl:school['photo'],
                fit: BoxFit.cover,
              ),

           ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(school['name'],
                style: const TextStyle(

                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text("Motto",style: TextStyle(
                       color: Colors.white,
                        fontWeight: FontWeight.bold,
                       fontSize: 18
                    ),),
                    Text("For Better Education",style: TextStyle(
                        color: Colors.white,

                        fontSize: 18
                    ))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text("Address",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("Ally  Hassan Mwinyi Rd, Kinondoni, Dar es salaam",style: TextStyle(
                        color: Colors.white,

                        fontSize: 18
                    ))
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text("Courses",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("HGL, PCM, PCB, EGM, ECA",style: TextStyle(
                        color: Colors.white,

                        fontSize: 18
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text("Description",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("Ally  Hassan Mwinyi Rd, Kinondoni, Dar es salaam",style: TextStyle(
                        color: Colors.white,

                        fontSize: 18
                    ))
                  ],
                ),
              ),
            ],
          )
         ],
     );
  }

}