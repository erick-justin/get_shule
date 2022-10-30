




import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'dialogs.dart';


class ConnectionUtils{


  BuildContext context;
  Future<String> createPost(String url, String jsonString, bool hasLoading) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {

       //  MessageDialogs().messageDialog(context, "Alert", "Please Check Your Network Connection",453);
         return "";
    }
    print("requesr: " + url + " ," + jsonString);
    Uri d = Uri.parse(url);
    http.Response response = await http.post(d,body: jsonString);
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400) {
         if (hasLoading){
        MessageDialogs().dismissDialogs(context);}
       // MessageDialogs().messageDialog(context, "Error",
           // "Seems There is a problem please try again later", 564);
      //  throw new Exception("Error while fetching data");
      }
    return response.body;
  }

  ConnectionUtils(this.context);
}