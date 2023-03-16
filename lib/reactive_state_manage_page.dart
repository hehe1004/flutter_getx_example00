import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example11/controller/count_controller_with_getx.dart';
import 'package:getx_example11/controller/count_controller_with_provider.dart';
import 'package:getx_example11/controller/count_controller_with_reactive.dart';
import 'package:getx_example11/state/with_getx.dart';
import 'package:getx_example11/state/with_provider.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    //인스턴트 주입
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetX(
            //   builder: (_) {
            //     return Text(
            //         "${Get.find<CountControllerWithReactive>().count.value}");
            //   },
            // ),
            Obx(
              () => (Text(
                  "${Get.find<CountControllerWithReactive>().count.value}")),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: Text("+"),
            ),

            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: Text("5"),
            ),
          ],
        ),
      ),
    );
  }
}
