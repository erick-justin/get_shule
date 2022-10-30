



import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utilities/sizeConfig.dart';



class ImageFullScreenPage extends StatelessWidget{
  String image_url;


  ImageFullScreenPage(this.image_url);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:  Colors.black,
      ),

      body:    Center(
        child: Hero(
          tag: image_url,
          child: Container(







              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(0))

              ),
              child: ClipRRect(

                  borderRadius: BorderRadius.circular(0),
                  child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                            ),
                          ),

                      imageUrl:
                      image_url.replaceFirst("https://farnett-main-bucket.s3.us-east-1.amazonaws.com", "https://d2vp40oyl53nx5.cloudfront.net")



                  )
              )),
        ),
      ),
    );
  }

}




class ImageFullScreenSliderPage extends StatelessWidget{
  List images;
  int index;


  ImageFullScreenSliderPage(this.images,this.index);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor:   Color.fromRGBO(0, 0, 0, 1),
      ),
    );
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:  Colors.black,
      ),

      body:    Center(
        child: Hero(
            tag: images[index]['media_url'],
            child: Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.
              screenWidth,

              child: CarouselSlider(

                options: CarouselOptions(
                  viewportFraction: 1,
                  initialPage: index,
                  height: SizeConfig.screenHeight,
                  //autoPlay: true,
                  aspectRatio: 1,

                  enableInfiniteScroll: images.length>1,
                  autoPlayInterval: Duration(milliseconds: 3000),









                ),
                items:images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: SizeConfig.screenWidth,
                        child: ClipRRect(


                            borderRadius: BorderRadius.circular(0),
                            child: CachedNetworkImage(
                                fit: BoxFit.fitWidth,
                                placeholder: (context, url) =>
                                    Center(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 1,
                                      ),
                                    ),

                                imageUrl:
                                i['media_url']



                            )
                        ),
                      ) ;
                    },
                  );
                }).toList(),
              ),
            )
        ),
      ),
    );
  }

}