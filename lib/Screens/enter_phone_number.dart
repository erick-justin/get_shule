import 'dart:convert';


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

import '../Common/inter_text_style.dart';
import '../Common/option_view.dart';
import '../utilities/colors.dart';
import '../utilities/connectionUtils.dart';
import '../utilities/dialogs.dart';
import '../utilities/systemConstants.dart';

class EnterPhoneNumber extends StatefulWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.06),
            Center(
              child: Text("Let’s Create Account",
                  style: interTextStyle(FontWeight.w500, 24, black01)),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text("Enter Phone Number",
                  style: interTextStyle(FontWeight.w500, 24, black02)),
            ),
            SizedBox(height: size.height * 0.04),
            IntlPhoneField(
              controller: phone,
              decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  )),
              initialCountryCode: 'TZ',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "A verification code will be sent to this number",
              style: interTextStyle(FontWeight.w500, 13, black03),
            ),
            SizedBox(height: size.height * 0.15),
            Center(
              child: Text(
                "By clicking next, you agree to our terms and conditions.",
                textAlign: TextAlign.center,
                style: interTextStyle(FontWeight.w500, 13, black03),
              ),
            ),
            InkWell(
              onTap: () {
              //  Navigator.push(
                  //context,
               //   MaterialPageRoute(builder: (context) => EnterNamePage()),
                  getServerResponse(verifyNumber(), 100, true);

              },
              child: Center(
                child: SizedBox(
                  width: size.width / 2.5,

                  child: OptionView(
                    mainBlack,
                    "Next",
                    textColor: white,
                    padding: 17,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginPhoneNumber()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                      Icons.arrow_back
                  ),
                  Text("Login",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),

                ],
              ),
            )
          ],
        ),
      ))),
    );
  }

String phoe = "";
  String verifyNumber(){
    Map<String, dynamic> request = {};
    Map<String, dynamic> data = {};

    request['code'] = 100;
    request['api'] = 100;
    // data['post_text'] = postText.text;
    data['phone_number'] ="255${phone.text}";
    phoe = data['phone_number'];
    request['data'] =data;

    //data['email'] = email;
    // data['password'] = password;


    if (kDebugMode) {
      print(jsonEncode(request));
    }
    return jsonEncode(request);

  }





  Future<void> getServerResponse (String requestJsonString,int rCode, bool hasLoading) async {
    if (hasLoading){
      MessageDialogs().loadingIndicator(context);}
    String serverResponse = await  ConnectionUtils(context).createPost(serverUrl, requestJsonString, hasLoading);
    if (hasLoading){

      MessageDialogs().dismissDialogs(context);}
    if (kDebugMode) {
      print(serverResponse);
    }
    var responseBody = jsonDecode(serverResponse);
    int code = responseBody['code'];
    if (code == 200) {



//Navigator.push(context, MaterialPageRoute(builder: (builder)=>OtpPage(phoe)));







    }
    else if (code == 301) {

      MessageDialogs().messageDialog(
          context, "Sucess", responseBody['msg'],4322);



    }
    else {
      MessageDialogs().messageDialog(
          context, "Error!", responseBody['msg'], 54);
    }


  }
}
