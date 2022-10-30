

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_shule/Screens/profile_page.dart';
import 'package:get_shule/Screens/school_details_page.dart';
import 'package:get_shule/utilities/colors.dart';
import 'package:iconsax/iconsax.dart';

import '../Common/about_stack_widget.dart';
import '../main.dart';
import '../utilities/connectionUtils.dart';
import '../utilities/dialogs.dart';
import '../utilities/sizeConfig.dart';
import '../utilities/systemConstants.dart';

class HomeScreenPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenPageState();
  }
}


class HomeScreenPageState extends State<HomeScreenPage>
{


  List schools = [{"O level":[
    {"name":"Feza Secondary School",
     "region":"Dar es salaam",
      'photo':"https://hizmetnews.com/sds/wp-content/uploads/2017/02/The-Feza-Schools-Tanzania.jpg"},
    {"name":"Tusiime",
      "region":"Dar es salaam",
      'photo':"https://tusiimeschool.ac.tz/assets/images/pages/secondary-school/tusiime-secondary-school-overview.jpg"},

    {"name":"Trust St Patrick",
      "region":"Arusha",
      'photo':"https://truststpatrickschools.co.tz/assets/images/sps/frontBlocks.jpg"}
  ]},
    {"A level":[
      {"name":"Feza Secondary School",
        "region":"Dar es salaam",
        'photo':"https://hizmetnews.com/sds/wp-content/uploads/2017/02/The-Feza-Schools-Tanzania.jpg"},
      {"name":"Tusiime",
        "region":"Dar es salaam",
        'photo':"https://tusiimeschool.ac.tz/assets/images/pages/secondary-school/tusiime-secondary-school-overview.jpg"},

      {"name":"Trust St Patrick",
        "region":"Arusha",
        'photo':"https://truststpatrickschools.co.tz/assets/images/sps/frontBlocks.jpg"}
    ]}];


  @override
  Widget build(BuildContext context) {
    dd();
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body:

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

             children: [

               Row(

                 children: const [
                   Icon(
                      Icons.home,
                     size: 40,
                   ),

                 ],
               ),

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16.0),
                 child: Text("Which school\nare you looking for?",style: TextStyle(

                    fontSize: 35,
                   fontWeight: FontWeight.bold
                 ),),
               ),
               InkWell(
                 onTap: () {

                 },
                 child: TextFormField(
                   decoration: InputDecoration(
                     isDense: true,
                     contentPadding: const EdgeInsets.all(13),
                     hintText: "Search a school here.",
                     prefixIcon: const Icon(Iconsax.search_normal_1,color: mainBlack,),
                     filled: true,
                     enabled: false,
                     fillColor: const Color.fromRGBO(
                       239,
                       239,
                       239,
                       0.5,
                     ),
                     disabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: const BorderSide(
                             color: Color.fromRGBO(239, 239, 239, 1))),
                   ),
                 ),
               ),
               if(hasDoneLoading) Column(
                   children: catsWidgets
               ),
               if(!hasDoneLoading)Center(child: CircularProgressIndicator(),)
             ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: mainBlack,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(
              color: Colors.grey
          ),
          selectedLabelStyle: const TextStyle(
              color: mainBlack
          ),
          currentIndex: 1,
          onTap: (ind){
            print(ind);
             if(ind ==0){

             }

            if(ind ==1){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>ProfilePage()));
            }
          },

          items: const [

            BottomNavigationBarItem(icon: Icon(Icons.list),label: "My Applications"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
          ],

        ),
      ),
    );
  }

  bool hasDoneLoading = false;
  List<Widget> catsWidgets = [];


  String getCats() {
    Map<String, dynamic> request = {};
    Map<String, dynamic> data = {};

    request['code'] = 141;
    request['api'] = 100;


    data['user_id'] = Suser_id;


    request['data'] = data;

    print(jsonEncode(request));
    return jsonEncode(request);
  }

  Future<void> getServerResponse(
      String requestJsonString, int rCode, bool hasLoading) async {
    if (hasLoading) {
      MessageDialogs().loadingIndicator(context);
    }
    String serverResponse = await ConnectionUtils(context)
        .createPost(serverUrl, requestJsonString, hasLoading);
    if (hasLoading) {
      MessageDialogs().dismissDialogs(context);
    }
    print(serverResponse);
    if (serverResponse != null) {
      var responseBody = jsonDecode(serverResponse);
      int code = responseBody['code'];
      if (code == 200) {
        if (rCode == 100) {
          setState((){
            hasDoneLoading = true;
            List server_cats = responseBody['users'];


          });



          // Navigator.push(
          //  context, MaterialPageRoute(builder: (context) => MyHomePage()));
        }

        if (rCode == 200) {





        }


      } else {
        MessageDialogs()
            .messageDialog(context, "Error!", responseBody['msg'], 54);
      }
    }
  }

  dd(){
    catsWidgets.clear();
     setState(() {
       for (int d =0;d<schools.length;d++){


         catsWidgets.add(influeHomeWid(schools[d],d));
         hasDoneLoading = true;
       }
     });
  }

  Widget influeHomeWid(cat,int d){
    String key = cat.keys.first;
    List schoools = cat[key];
    return Column(children: [

      if(d!=0) SizedBox(
        height: 24,
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(key,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              )),
          InkWell(
            onTap: () {
             // Navigator.of(context).push(MaterialPageRoute(
                //  builder: (context) =>  CategoryMorePage(cat)));
            },
            child: const Text("More",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    color: mainBlack)),
          ),
        ],
      ),
      SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight! * 0.27,
        child: ListView.builder(
            itemCount: schoools.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var  school = schoools[index];
              return InkWell(
                onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          SchoolDetailsPage(school)));
                },

                child: AboutStackWidget(user: school,),
              );}),
      ),
    ],);
  }
}