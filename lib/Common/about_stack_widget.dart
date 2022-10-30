import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'package:iconsax/iconsax.dart';

import '../utilities/sizeConfig.dart';

class AboutStackWidget extends StatelessWidget {
  var user;
  AboutStackWidget({
    Key? key,
    this.user
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * 0.25,
      width: SizeConfig.screenWidth! * 0.40,
      // color: Colors.grey,
      margin: const EdgeInsets.only(top: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: SizeConfig.screenHeight! * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(user['photo']),
                    fit: BoxFit.cover,
                  )),
            // child:  Align(
            //   alignment: Alignment.topRight,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 35,
            //       width: 35,
            //       decoration: BoxDecoration(
            //          color: Colors.white.withOpacity(0.5),
            //         borderRadius: BorderRadius.circular(50)
            //       ),
            //       child: Icon(Iconsax.add,
            //         color: Colors.white,
            //         size: 15,
            //       ),
            //     ),
            //   ),
            // ),


          ),
            SizedBox(
              height: 6,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(user['name'],
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                 SizedBox(width: 3,),








              ],
            ),
          SizedBox(
            height: 4,
          ),



          Text(user['region'],
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  color: Colors.black,
                )),




        ],
      ),
    );
  }
}
