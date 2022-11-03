

import 'package:flutter/material.dart';
import 'package:get_shule/Common/option_view.dart';
import 'package:get_shule/utilities/sizeConfig.dart';

import '../utilities/colors.dart';

class ProfileEditPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return ProfileEditPageState();
  }
  
}


class ProfileEditPageState extends State<ProfileEditPage> with TickerProviderStateMixin{
   TabController? c ;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
   c =  TabController(length: 2, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.white,
       appBar:  AppBar(
         backgroundColor: Colors.white,
         iconTheme: IconThemeData(
            color: Colors.black
         ),

         title: const Text("Edit Profile",style: TextStyle(
            color: Colors.black
         ),),
         elevation: 0,
         centerTitle: true,
       ),
      body: theBody(),
    );

  }

  theBody(){
    return Column(
      children: [

        Expanded(child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: c,
            children: [
              Container(
                child: SingleChildScrollView(
                  child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: const [

                             Text("First name"),

                             TextField(
                               decoration: InputDecoration(
                                   hintText: "Write your first name",
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

                             Text("Middle name"),

                             TextField(
                               decoration: InputDecoration(
                                   hintText: "Write your middle name",
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

                             Text("Last name"),

                             TextField(
                               decoration: InputDecoration(
                                   hintText: "Write your Last name",
                                   border: UnderlineInputBorder(
                                       borderSide: BorderSide(color: mainBlack)
                                   )
                               ),
                             )

                           ],
                         ),
                       ),
                       Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [

                                   Text("Father's name"),

                                   TextField(
                                     decoration: InputDecoration(
                                         hintText: "Father's name",
                                         border: UnderlineInputBorder(
                                             borderSide: BorderSide(color: mainBlack)
                                         )
                                     ),
                                   )

                                 ],
                               ),
                             ),
                           ),
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [

                                   Text("Mother's name"),

                                   TextField(
                                     decoration: InputDecoration(
                                         hintText: "Mother's name",
                                         border: UnderlineInputBorder(
                                             borderSide: BorderSide(color: mainBlack)
                                         )
                                     ),
                                   )

                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [

                                   Text("Date of Birth"),

                                   TextField(
                                     decoration: InputDecoration(
                                         hintText: "23/03/2001",
                                         border: UnderlineInputBorder(
                                             borderSide: BorderSide(color: mainBlack)
                                         )
                                     ),
                                   )

                                 ],
                               ),
                             ),
                           ),
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [

                                   Text("Religion"),

                                   TextField(
                                     decoration: InputDecoration(
                                         hintText: "Muslim",
                                         border: UnderlineInputBorder(
                                             borderSide: BorderSide(color: mainBlack)
                                         )
                                     ),
                                   )

                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: const [

                             Text("Residency Region"),

                             TextField(
                               decoration: InputDecoration(
                                   hintText: "Region you live",
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

                             Text("Residency District"),

                             TextField(
                               decoration: InputDecoration(
                                   hintText: "District you live",
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

                             Text("Address"),

                             TextField(
                               decoration: InputDecoration(
                                   hintText: "Mtaa",
                                   border: UnderlineInputBorder(
                                       borderSide: BorderSide(color: mainBlack)
                                   )
                               ),
                             )

                           ],
                         ),
                       ),

                     ],
                  ),
                ),
              ),
              Container(
                child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [

                            Text("Primary School"),

                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Name of your primary school",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Location of your primary school",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            )


                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [

                            Text("Secondary School"),

                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Name of your secondary school",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Location of your secondary school",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Secondary school results",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            )


                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [

                            Text("high School (if any)"),

                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Name of your high school",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Location of your high  school",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "High school results",
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: mainBlack)
                                  )
                              ),
                            )


                          ],
                        ),
                      ),

                    ],
                ),
              )
            ],
        )),

    Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              if(c!.index==1)     InkWell(
                 onTap: (){
                   setState(() {

                   });
                    c!.animateTo(0);
                 },
                child
                    : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back
                  ),
                ),
              ),
              Expanded
                (

                  child: InkWell(
                     onTap: (){
                       setState(() {

                       });
                        c!.animateTo(1);
                     },
                      child: OptionView(mainBlack, "Next",padding: 16,))),
            ],
          ),
        )
      ],

    );
  }
}
