import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example11/reactive_state_manage_page.dart';
import 'package:getx_example11/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (_) => FirstPage(),));
                // Get.to(FirstPage());
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
              child: Text(" 버튼"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed("/next", arguments: "개남?");
                // Get.toNamed("/next", arguments: {"name" : "개남?","age" : "23"});
                Get.toNamed("/next", arguments: User(name: "개남", age: 32));
              },
              child: Text("Argument"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/user/28357?name=개남&age=22");
              },
              child: Text("동적 url"),
            ),
            ElevatedButton(
              child: Text("단순 상태관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),

            ElevatedButton(
              child: Text("반응형상태관리"),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({
    required this.name,
    required this.age,
  });
}
