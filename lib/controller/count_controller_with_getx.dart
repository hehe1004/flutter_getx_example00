import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController{

  int count = 0;
  // void increase(String id){
  //   count++;
  //   update([id]);
  // }

  void increase(){
    count++;
    update();
  }

  void putNumber(int value){
    count = value;
    update();
  }

  @override
  void onInit() {

    //Rx 인터페이스 타입만됨 (안됨)
    //  ever(count,(_)=>print("매번 호출"));
    super.onInit();
  }
}