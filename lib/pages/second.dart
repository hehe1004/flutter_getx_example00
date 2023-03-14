import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second page"),),
      body:
      Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              }, child: Text("뒤로이동"),

            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(Home());
                // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_)=> Home()), (route) => false);
                Get.offAll(Home());
              }, child: Text("홈으로 이동"),
            ),
          ],
        ),


      ),


    );
  }
}
