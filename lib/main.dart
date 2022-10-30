import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Screens/setup.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   //await Firebase.initializeApp();
//   print("Handling a background message: ${message.messageId}");
//   var data =jsonEncode(message.data);
//   List intents = ['video_call',"audio_call"];
//   if(intents.contains(message.data['intent'])){
//     showCallkitIncoming(Uuid().v4(),data);}
// }
Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // if (Platform.isIOS) {
  //   await Firebase.initializeApp(
  //       options: const FirebaseOptions(
  //           apiKey: "AIzaSyBIY-Xyxt9y_zfV33xiXHXLBYboyjMgY_4",
  //           appId: "1:226266452925:ios:0a2e22f61149113e49b8d4",
  //           messagingSenderId: "226266452925",
  //           projectId: "dakika-d6b09"));
  // } else {
  //   await Firebase.initializeApp();
  // }
  //
  // await Firebase.initializeApp(
  //
  //   // options: DefaultFirebaseOptions.currentPlatform,
  //   //
  // );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp( TheBase());
}


String Suser_id = "";

String app_id = "503f8320dc9c4c54a4bf5308a6ba8fbe";
String token = "";
bool is_login = true;
bool is_sendbird_active = false;
String Sphone = "";
//var sendbird;
// final sendbird = SendbirdSdk(appId: 'B16A6924-A4B0-47EE-AC8B-21363548BF33');
final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
final appState = AppState();


class AppState with ChangeNotifier {
  bool didRegisterToken = false;
  String? token;
  String? destChannelUrl;

  void setDestination(String? channelUrl) {
    destChannelUrl = channelUrl;
    notifyListeners();
  }
}



class TheBase extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider<MsgCountModel>(create: (context) => MsgCountModel()),
    //     ChangeNotifierProvider<ChoiceModel>(create: (context) => ChoiceModel()),
    //
    //
    //   ],
    //
    //   child:
  return  MyApp() ;

  //  );
  }

}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}


class MyAppState extends State<MyApp>{

  // This widget is the root of your application.




  initiateFireAbse(){

    // PushNotificationsManager manager = PushNotificationsManager();
    // manager.init();
    // manager.firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) async {
    //     print("onMessage: $message");
    //     //_showItemDialog(message);
    //   },
    // );
  }


  @override
  void initState() {
    initiateFireAbse();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    // sendbird =  SendbirdSdk(appId: "4AF73240-3E;A7-4177-8414-66E6AC35906F");
    // print("the send bird $sendbird");

    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Dakika',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.averiaSansLibreTextTheme(),
      ),
      home:  SetupPage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }



}
