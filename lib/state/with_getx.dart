import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example11/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  //아이디 사용
  // Widget _button(String id){
  //   return ElevatedButton(
  //     onPressed: () {
  //       // Get.find<CountControllerWithGetX>().increase();
  //       _controllerWithGetX.increase(id);
  //     },
  //     child: Text("+"),
  //   );
  // }

  //풋 넘버용
  Widget _button() {
    return ElevatedButton(
      onPressed: () {
        // Get.find<CountControllerWithGetX>().increase();
        _controllerWithGetX.increase();
      },
      child: Text("+"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("getX"),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),

          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text("${controller.count}");
            },
          ),

          Text("getX"),
          GetBuilder<CountControllerWithGetX>(
            builder: (controller) {
              print("update");
              return Text("${controller.count}");
            },
          ),

          // _button("first"),
          // _button("second"),
          _button(),

          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetX>().putNumber(5);
            },
            child: Text("+"),
          )

          // ElevatedButton(
          //   onPressed: () {
          //     Get.find<CountControllerWithGetX>().increase();
          //   },
          //   child: Text("+"),
          // )
        ],
      ),
    );
  }
}
