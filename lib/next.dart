import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

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
            Text("${(Get.arguments as User).name.toString()} : ${(Get.arguments as User).age}")
          ],
        ),


      ),


    );
  }
}
