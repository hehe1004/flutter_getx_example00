import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example11/next.dart';
import 'package:getx_example11/pages/first.dart';
import 'package:getx_example11/pages/second.dart';
import 'package:getx_example11/user.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "flutter demo",

      initialRoute: "/",
      // routes: {
      //   "/" : (context)=>Home(),
      //   "/first" : (context)=>FirstPage(),
      //   "/second" : (context)=>SecondPage(),
      // },
      getPages: [
        GetPage(name: "/", page: ()=> Home(), transition: Transition.zoom),
        GetPage(name: "/first", page: ()=> FirstPage(), transition: Transition.zoom),
        GetPage(name: "/second", page: ()=> SecondPage(), transition: Transition.zoom),
        GetPage(name: "/next", page: ()=> NextPage(), transition: Transition.zoom),
        GetPage(name: "/user/:uid", page: ()=> UserPage(), transition: Transition.zoom),
      ],

    );
  }
}
