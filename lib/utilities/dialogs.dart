import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_shule/utilities/sizeConfig.dart';

import '../main.dart';
import 'colors.dart';

import 'systemConstants.dart';

class MessageDialogs {
// a dialog to show messages

  Future<void> messageDialog(

      BuildContext mContext, String header, String message, int code, {Function?  onClick}) async {
    return showDialog<void>(
      context: mContext,

      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.bottomCenter,
          backgroundColor: white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),

          content: SingleChildScrollView(
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    header,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: SizeConfig.screenWidth,
                    child: Center(
                      child: Text(
                        message,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: mainBlack.withOpacity(0.4),
                ),

                InkWell(
                   onTap: ()
                   {
                     Navigator.of(context).pop();



                     if(code == 6464){
                       onClick!();
                     }




                     if (code == loginCode) {
                      // Navigator.push(mContext,
                        //   MaterialPageRoute(builder: (mContext) => LoginPhoneNumber()));
                     }
                     if (code == 1) {
                       // Navigator.push(mContext,   MaterialPageRoute(builder: (mContext) => HomeDisplayPage(index:1)));

                     }

                     if (code == 2) {
                       // Navigator.push(mContext,   MaterialPageRoute(builder: (mContext) => HomeDisplayPage(index:2)));

                     }

                     if (code == homeCode) {
                      // Navigator.push(mContext,
                         //  MaterialPageRoute(builder: (mContext) => HomeWrap(index: 1,)));
                     }

                     if (code == profileCode) {
                       //  Navigator.push(mContext,   MaterialPageRoute(builder: (mContext) => ProfilePage()));
                     }

                     if (code == backCode) {
                       Navigator.of(context).pop();
                     }
                   },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                       child: Center(child: Text("OK")),
                    ),
                  ),
                )
              ],
            ),
          ),
          // actions: <Widget>[
          //   FlatButton(
          //     child: Text(
          //       code == profileCode ? "Go To Profile" : "OK",
          //       style: const TextStyle(
          //         color: Colors.black,
          //       ),
          //     ),
          //     onPressed: ,
          //   ),
          // ],
        );
      },
    );
  }

  Future<void> loginDialog(
      BuildContext mContext, String header, String message, int code) async {
    return showDialog<void>(
      context: mContext,

      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          title: Text(
            header,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                "REGISTER",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();

                //   Navigator.push(mContext,
                //   MaterialPageRoute(builder: (mContext) => LoginPageNew()));
              },
            ),
          ],
        );
      },
    );
  }

  // loading dialog to indication a loading process
  var smeContext;
  Future<void> loadingIndicator(BuildContext mContext) async {
    return showDialog<void>(
      context: mContext,

      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: grey01,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          content: SingleChildScrollView(
            child: Container(
              height: 100,
              width: 300,
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  child: const CircularProgressIndicator(
                    strokeWidth: 3,
                    semanticsLabel: "Login",
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          actions: <Widget>[],
        );
      },
    );
  }

  void dismissDialogs(BuildContext c) {
  //  Navigator.of(navigatorKey.currentContext!).pop();
  }


  Future<Future<Object?>> modifiedDialog(

      BuildContext mContext, Widget d, double vertical_padding) async {
    return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black38,
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (ctx, anim1, anim2) => Padding(
        padding:  EdgeInsets.symmetric(vertical: vertical_padding,horizontal: SizeConfig.screenWidth!*0.05),
        child: Material(type: MaterialType.transparency,

          child: SingleChildScrollView(
            child: Container(

              child: Column(
                  children: [

                    InkWell(
                       onTap: (){
                          Navigator.pop(mContext);
                       },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(100)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.clear_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      decoration:  BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)

                      ),
                      child: d,
                    )
                  ],
                ),
              ),
              //color: Colors.red,
            ),
        ),

      ),
      // => AlertDialog(

      //
      //   content: Container(
      //      height: 600,
      //     color: Colors.blue,
      // ),
      //
      //   elevation: 2,
      //
      //   actions: [
      //     TextButton(
      //       child: Text('OK'),
      //       onPressed: () {
      //       //  Navigator.of(cont).pop();
      //       },
      //     ),
      //   ],
      // ),
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
        child: FadeTransition(
          child: child,
          opacity: anim1,
        ),
      ),
      context: mContext,
    );
  }

}
