import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first page"),),
      body:
      Center(
        child: Column(
          children: [
            // Text("${Get.arguments}")
            // Text("${Get.arguments['name']} : ${Get.arguments['age']}")
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']} 님"),
            Text("${Get.parameters['age']} 살"),
          ],
        ),


      ),


    );
  }
}
