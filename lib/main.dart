

import 'package:advanceuipr1/appstor/apps/provider/imageprovider.dart';
import 'package:advanceuipr1/appstor/apps/view/firstScreen.dart';
import 'package:advanceuipr1/appstor/apps/view/secondeScreen.dart';
import 'package:advanceuipr1/appstor/apps/view/tabbarView.dart';
import 'package:advanceuipr1/appstor/botomnavigationbar.dart';
import 'package:advanceuipr1/appstor/bottombar.dart';
import 'package:advanceuipr1/appstor/game/gamefirstScreen.dart';
import 'package:advanceuipr1/sttings/android_screen.dart';
import 'package:advanceuipr1/sttings/iosScreen.dart';
import 'package:advanceuipr1/sttings/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {

 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white,statusBarIconBrightness: Brightness.dark,systemNavigationBarDividerColor: Colors.black));


  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<homeprovider>(create: (context) => homeprovider(),),
        ListenableProvider<Image_Provider>(create:(context)=>Image_Provider(),),
        ListenableProvider<botoomnavigationbar>(create: (context)=>botoomnavigationbar(),),
      ],
      child:android(),
    ),
  );
}


  Widget android() {
    return MaterialApp(
      theme: ThemeData(
        splashColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>bottomber_Screen(),
        'top':(context)=>TebBar(),
        'one':(context)=>screenone(),
        'sec':(context) =>app_cickScreen(),
        'game':(context)=>Game_Tabbar(),
        'androdi': (context) => androidscreen(),

      },
    );
  }
  Widget ios() {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>bottomber_Screen(),
        'top':(context)=>TebBar(),
        'one':(context)=>screenone(),
        'sec':(context) =>app_cickScreen(),
        'game':(context)=>Game_Tabbar(),
        'ios': (context) => IosScreen(),
      },
    );
  }






