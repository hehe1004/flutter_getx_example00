import 'package:flutter/material.dart';
import 'package:getx_example11/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("provider"),
        Consumer<CountControllerWithProvider>(
          builder: (_, snapshot, child) {
            return Text("${snapshot.count}");
          },
        ),
        // Text("0"),
        ElevatedButton(onPressed: () {
          Provider.of<CountControllerWithProvider>(context, listen: false).increase();
        }, child: Text("+"))
      ],
    ));
  }
}
