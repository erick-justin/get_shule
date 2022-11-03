

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_shule/utilities/colors.dart';
import 'package:get_shule/utilities/commonFunction.dart';
import 'package:get_shule/utilities/sizeConfig.dart';

import 'form_page.dart';

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
Navigator.push(context, MaterialPageRoute(builder: (builder)=>FormPage("ddvv")));
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
                  children:  [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Motto",style: TextStyle(
                           color: Colors.white,
                            fontWeight: FontWeight.bold,
                           fontSize: 18
                        ),),
                        InkWell(
                           onTap: (){
                              showModalBottomSheetF(context, resultsView());
                           },
                          child: Text("View Results",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                        ),
                      ],
                    ),
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



  Widget resultsView(){
     return Container(
        height:  500,
        child:  Column(

          children:[
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: const Text("O level National Results",style: TextStyle(
                fontSize: 25,
               fontWeight: FontWeight.bold
             ),),
           ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: const [
                   Text("Year",style: TextStyle(
                      fontSize: 16,
                     fontWeight: FontWeight.bold
                   ),),
                   Text("Reg",style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                   ),),
                   Text("Nat",style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                   ),),
                   Text("D1",style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                   ),),
                   Text("D2",style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                   ),),
                   Text("D3",style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                   ),),
                   Text("D4",style: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                   ),),
                 ],
              ),
            ),
            Expanded(child: ListView(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("2021",style: TextStyle(
                          fontSize: 16,

                      ),),
                      Text("2",style: TextStyle(
                          fontSize: 16,

                      ),),
                      Text("5",style: TextStyle(
                          fontSize: 16,

                      ),),
                      Text("43",style: TextStyle(
                          fontSize: 16,

                      ),),
                      Text("6",style: TextStyle(
                          fontSize: 16,

                      ),),
                      Text("1",style: TextStyle(
                          fontSize: 16,

                      ),),
                      Text("0",style: TextStyle(
                          fontSize: 16,

                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("2021",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("2",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("5",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("43",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("6",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("1",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("0",style: TextStyle(
                        fontSize: 16,

                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("2021",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("2",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("5",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("43",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("6",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("1",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("0",style: TextStyle(
                        fontSize: 16,

                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("2021",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("2",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("5",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("43",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("6",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("1",style: TextStyle(
                        fontSize: 16,

                      ),),
                      Text("0",style: TextStyle(
                        fontSize: 16,

                      ),),
                    ],
                  ),
                ),



              ],
            ))


       ] ),
     );
  }

}