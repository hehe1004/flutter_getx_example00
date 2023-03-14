import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first page"),),
      body:
      Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  // Get.to(SecondPage());
                  Get.toNamed("/second");
                }, child: Text("다음 페이지 이동"),

            ),
            ElevatedButton(
              onPressed: () {}, child: Text("test"),
            ),
          ],
        ),


      ),


    );
  }
}
