import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example11/controller/dependency_controller.dart';


class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(

          onPressed: () {
            Get.find<DependencyController>().increase();
          },
          child: Text("button"),
        ),
      ),
    );
  }
}
