import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example11/controller/dependency_controller.dart';
import 'package:getx_example11/pages/dependencys/get_lazyput.dart';
import 'package:getx_example11/pages/dependencys/get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(GetPut(), binding: BindingsBuilder(() {
                  Get.put(DependencyController());
                }));
              },
              child: Text("GetPut"),
              //바로 메모리에 올림
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(
                //   GetLazyPut(),
                //   binding: BindingsBuilder(() {
                //     Get.lazyPut<DependencyController>(
                //         () => DependencyController());
                Get.to(()=>
                    GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                            () => DependencyController());
                  }),
                );
              },
              child: Text("Get.lazyPut"),
              //사용하려고 접글할때 메모리에 올림 ex)페이지에서 버튼을 눌릴때?
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(""),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
