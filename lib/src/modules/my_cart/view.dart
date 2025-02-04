import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MyCartPage extends StatelessWidget {
  final logic = Get.put(MyCartLogic());
  final state = Get.find<MyCartLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
